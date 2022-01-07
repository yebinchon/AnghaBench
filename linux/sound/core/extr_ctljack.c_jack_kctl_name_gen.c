
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void jack_kctl_name_gen(char *name, const char *src_name, int size)
{
 size_t count = strlen(src_name);
 bool need_cat = 1;


 if (count >= 5)
  need_cat = strncmp(&src_name[count - 5], " Jack", 5) ? 1 : 0;

 snprintf(name, size, need_cat ? "%s Jack" : "%s", src_name);

}
