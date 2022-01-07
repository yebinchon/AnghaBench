
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {char* long_name; } ;


 int dso__set_long_name (struct dso*,char const*,int) ;
 int strchr (char const*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void dso__adjust_kmod_long_name(struct dso *dso, const char *filename)
{
 const char *dup_filename;

 if (!filename || !dso || !dso->long_name)
  return;
 if (dso->long_name[0] != '[')
  return;
 if (!strchr(filename, '/'))
  return;

 dup_filename = strdup(filename);
 if (!dup_filename)
  return;

 dso__set_long_name(dso, dup_filename, 1);
}
