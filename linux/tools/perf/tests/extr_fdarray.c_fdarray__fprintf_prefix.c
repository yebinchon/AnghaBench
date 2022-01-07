
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int dummy; } ;
typedef int FILE ;


 int fdarray__fprintf (struct fdarray*,int *) ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int fdarray__fprintf_prefix(struct fdarray *fda, const char *prefix, FILE *fp)
{
 int printed = 0;

 if (verbose <= 0)
  return 0;

 printed += fprintf(fp, "\n%s: ", prefix);
 return printed + fdarray__fprintf(fda, fp);
}
