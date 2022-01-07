
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct trace {int dummy; } ;
typedef int FILE ;


 size_t __trace__fprintf_tstamp (struct trace*,scalar_t__,int *) ;
 size_t fprintf (int *,char*) ;

__attribute__((used)) static size_t trace__fprintf_tstamp(struct trace *trace, u64 tstamp, FILE *fp)
{
 if (tstamp > 0)
  return __trace__fprintf_tstamp(trace, tstamp, fp);

 return fprintf(fp, "         ? ");
}
