
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int FILE ;


 int PATH_MAX ;
 int fclose (int *) ;
 char fgetc (int *) ;
 char* fgets (char*,size_t,int *) ;
 int * fopen (char*,char*) ;
 int path__join (char*,int,char const*,char const*) ;
 char const* strim (char*) ;

__attribute__((used)) static const char *shell_test__description(char *description, size_t size,
        const char *path, const char *name)
{
 FILE *fp;
 char filename[PATH_MAX];

 path__join(filename, sizeof(filename), path, name);
 fp = fopen(filename, "r");
 if (!fp)
  return ((void*)0);


 while (fgetc(fp) != '\n');

 description = fgets(description, size, fp);
 fclose(fp);

 return description ? strim(description + 1) : ((void*)0);
}
