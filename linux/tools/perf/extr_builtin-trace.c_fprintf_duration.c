
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 double NSEC_PER_MSEC ;
 int PERF_COLOR_NORMAL ;
 int PERF_COLOR_RED ;
 int PERF_COLOR_YELLOW ;
 scalar_t__ color_fprintf (int *,int ,char*,double) ;
 size_t fprintf (int *,char*) ;

__attribute__((used)) static size_t fprintf_duration(unsigned long t, bool calculated, FILE *fp)
{
 double duration = (double)t / NSEC_PER_MSEC;
 size_t printed = fprintf(fp, "(");

 if (!calculated)
  printed += fprintf(fp, "         ");
 else if (duration >= 1.0)
  printed += color_fprintf(fp, PERF_COLOR_RED, "%6.3f ms", duration);
 else if (duration >= 0.01)
  printed += color_fprintf(fp, PERF_COLOR_YELLOW, "%6.3f ms", duration);
 else
  printed += color_fprintf(fp, PERF_COLOR_NORMAL, "%6.3f ms", duration);
 return printed + fprintf(fp, "): ");
}
