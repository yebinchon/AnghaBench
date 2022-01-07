
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;
 int strcpy (char*,char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static bool filename_from_kallsyms_filename(char *filename,
         const char *base_name,
         const char *kallsyms_filename)
{
 char *name;

 strcpy(filename, kallsyms_filename);
 name = strrchr(filename, '/');
 if (!name)
  return 0;

 name += 1;

 if (!strcmp(name, "kallsyms")) {
  strcpy(name, base_name);
  return 1;
 }

 return 0;
}
