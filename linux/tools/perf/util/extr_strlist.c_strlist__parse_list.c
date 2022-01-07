
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 char* strchr (char const*,char) ;
 int strlist__parse_list_entry (struct strlist*,char const*,char const*) ;

__attribute__((used)) static int strlist__parse_list(struct strlist *slist, const char *s, const char *subst_dir)
{
 char *sep;
 int err;

 while ((sep = strchr(s, ',')) != ((void*)0)) {
  *sep = '\0';
  err = strlist__parse_list_entry(slist, s, subst_dir);
  *sep = ',';
  if (err != 0)
   return err;
  s = sep + 1;
 }

 return *s ? strlist__parse_list_entry(slist, s, subst_dir) : 0;
}
