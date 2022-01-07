
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,char const*) ;
 int * fopen (char const*,char*) ;

FILE *fopen_or_die(const char *path, const char *mode)
{
 FILE *filep = fopen(path, "r");

 if (!filep)
  err(1, "%s: open failed", path);
 return filep;
}
