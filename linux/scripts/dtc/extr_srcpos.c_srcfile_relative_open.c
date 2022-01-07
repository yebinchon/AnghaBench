
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ depfile ;
 int die (char*,char const*,int ) ;
 int errno ;
 char* fopen_any_on_path (char const*,int **) ;
 int fprintf (scalar_t__,char*,char*) ;
 int free (char*) ;
 int * stdin ;
 scalar_t__ streq (char const*,char*) ;
 int strerror (int ) ;
 char* xstrdup (char*) ;

FILE *srcfile_relative_open(const char *fname, char **fullnamep)
{
 FILE *f;
 char *fullname;

 if (streq(fname, "-")) {
  f = stdin;
  fullname = xstrdup("<stdin>");
 } else {
  fullname = fopen_any_on_path(fname, &f);
  if (!f)
   die("Couldn't open \"%s\": %s\n", fname,
       strerror(errno));
 }

 if (depfile)
  fprintf(depfile, " %s", fullname);

 if (fullnamep)
  *fullnamep = fullname;
 else
  free(fullname);

 return f;
}
