
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fputs (char*,int *) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int nsinfo__mountns_enter (struct nsinfo*,struct nscookie*) ;
 int nsinfo__mountns_exit (struct nscookie*) ;

__attribute__((used)) static int slow_copyfile(const char *from, const char *to, struct nsinfo *nsi)
{
 int err = -1;
 char *line = ((void*)0);
 size_t n;
 FILE *from_fp, *to_fp;
 struct nscookie nsc;

 nsinfo__mountns_enter(nsi, &nsc);
 from_fp = fopen(from, "r");
 nsinfo__mountns_exit(&nsc);
 if (from_fp == ((void*)0))
  goto out;

 to_fp = fopen(to, "w");
 if (to_fp == ((void*)0))
  goto out_fclose_from;

 while (getline(&line, &n, from_fp) > 0)
  if (fputs(line, to_fp) == EOF)
   goto out_fclose_to;
 err = 0;
out_fclose_to:
 fclose(to_fp);
 free(line);
out_fclose_from:
 fclose(from_fp);
out:
 return err;
}
