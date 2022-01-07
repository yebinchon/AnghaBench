
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_range {int dummy; } ;


 char const* PERF_COLOR_MAGENTA ;
 char const* PERF_COLOR_NORMAL ;
 char const* PERF_COLOR_RED ;
 double block_range__coverage (struct block_range*) ;

__attribute__((used)) static const char *annotate__address_color(struct block_range *br)
{
 double cov = block_range__coverage(br);

 if (cov >= 0) {

  if (cov > 0.75)
   return PERF_COLOR_RED;


  if (cov < 0.01)
   return PERF_COLOR_NORMAL;
 }

 return PERF_COLOR_MAGENTA;
}
