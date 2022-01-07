
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {scalar_t__ functions; } ;
struct gcov_fn_info {int dummy; } ;


 unsigned int get_fn_size (struct gcov_info*) ;

__attribute__((used)) static struct gcov_fn_info *get_fn_info(struct gcov_info *info, unsigned int fn)
{
 return (struct gcov_fn_info *)
  ((char *) info->functions + fn * get_fn_size(info));
}
