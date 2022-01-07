
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_dimension {int taken; } ;
struct perf_hpp_list {int dummy; } ;


 scalar_t__ __sort_dimension__add_hpp_output (struct sort_dimension*,struct perf_hpp_list*) ;

__attribute__((used)) static int __sort_dimension__add_output(struct perf_hpp_list *list,
     struct sort_dimension *sd)
{
 if (sd->taken)
  return 0;

 if (__sort_dimension__add_hpp_output(sd, list) < 0)
  return -1;

 sd->taken = 1;
 return 0;
}
