
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ display; int cl_output; int cl_resort; int cl_sort; } ;


 scalar_t__ DISPLAY_RMT ;
 scalar_t__ DISPLAY_TOT ;
 int ENOMEM ;
 scalar_t__ asprintf (int *,char*,char const*) ;
 scalar_t__ build_cl_output (int ,int) ;
 TYPE_1__ c2c ;
 char* coalesce_default ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int setup_coalesce(const char *coalesce, bool no_source)
{
 const char *c = coalesce ?: coalesce_default;

 if (asprintf(&c2c.cl_sort, "offset,%s", c) < 0)
  return -ENOMEM;

 if (build_cl_output(c2c.cl_sort, no_source))
  return -1;

 if (asprintf(&c2c.cl_resort, "offset,%s",
       c2c.display == DISPLAY_TOT ?
       "tot_hitm" :
       c2c.display == DISPLAY_RMT ?
       "rmt_hitm,lcl_hitm" :
       "lcl_hitm,rmt_hitm") < 0)
  return -ENOMEM;

 pr_debug("coalesce sort   fields: %s\n", c2c.cl_sort);
 pr_debug("coalesce resort fields: %s\n", c2c.cl_resort);
 pr_debug("coalesce output fields: %s\n", c2c.cl_output);
 return 0;
}
