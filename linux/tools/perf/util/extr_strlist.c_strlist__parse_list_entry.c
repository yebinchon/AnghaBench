
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {scalar_t__ file_only; } ;


 int ENOENT ;
 int ENOMEM ;
 int F_OK ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int free (char*) ;
 int strlist__add (struct strlist*,char const*) ;
 int strlist__load (struct strlist*,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int strlist__parse_list_entry(struct strlist *slist, const char *s,
         const char *subst_dir)
{
 int err;
 char *subst = ((void*)0);

 if (strncmp(s, "file://", 7) == 0)
  return strlist__load(slist, s + 7);

 if (subst_dir) {
  err = -ENOMEM;
  if (asprintf(&subst, "%s/%s", subst_dir, s) < 0)
   goto out;

  if (access(subst, F_OK) == 0) {
   err = strlist__load(slist, subst);
   goto out;
  }

  if (slist->file_only) {
   err = -ENOENT;
   goto out;
  }
 }

 err = strlist__add(slist, s);
out:
 free(subst);
 return err;
}
