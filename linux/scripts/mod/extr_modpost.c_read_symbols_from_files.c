
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PATH_MAX ;
 int fatal (char*,char const*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int read_symbols (char*) ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strends (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void read_symbols_from_files(const char *filename)
{
 FILE *in = stdin;
 char fname[PATH_MAX];

 if (strcmp(filename, "-") != 0) {
  in = fopen(filename, "r");
  if (!in)
   fatal("Can't open filenames file %s: %m", filename);
 }

 while (fgets(fname, PATH_MAX, in) != ((void*)0)) {
  if (strends(fname, "\n"))
   fname[strlen(fname)-1] = '\0';
  read_symbols(fname);
 }

 if (in != stdin)
  fclose(in);
}
