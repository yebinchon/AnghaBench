
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char*,char*) ;
 int free (char*) ;
 char* join_path (char const*,char const*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *try_open(const char *dirname, const char *fname, FILE **fp)
{
 char *fullname;

 if (!dirname || fname[0] == '/')
  fullname = xstrdup(fname);
 else
  fullname = join_path(dirname, fname);

 *fp = fopen(fullname, "rb");
 if (!*fp) {
  free(fullname);
  fullname = ((void*)0);
 }

 return fullname;
}
