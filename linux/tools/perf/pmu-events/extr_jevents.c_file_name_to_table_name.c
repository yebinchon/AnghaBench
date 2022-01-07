
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char*) ;
 int basename (char*) ;
 int errno ;
 int free (char*) ;
 int isalnum (int) ;
 int pr_err (char*,int ,int,int ) ;
 int pr_info (char*,int ,int ,char*) ;
 int prog ;
 int strerror (int ) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static char *file_name_to_table_name(char *fname)
{
 unsigned int i;
 int n;
 int c;
 char *tblname;






 n = asprintf(&tblname, "pme_%s", fname);
 if (n < 0) {
  pr_info("%s: asprintf() error %s for file %s\n", prog,
    strerror(errno), fname);
  return ((void*)0);
 }

 for (i = 0; i < strlen(tblname); i++) {
  c = tblname[i];

  if (c == '-' || c == '/')
   tblname[i] = '_';
  else if (c == '.') {
   tblname[i] = '\0';
   break;
  } else if (!isalnum(c) && c != '_') {
   pr_err("%s: Invalid character '%c' in file name %s\n",
     prog, c, basename(fname));
   free(tblname);
   tblname = ((void*)0);
   break;
  }
 }

 return tblname;
}
