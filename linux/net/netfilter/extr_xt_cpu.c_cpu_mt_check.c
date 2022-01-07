
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_cpu_info* matchinfo; } ;
struct xt_cpu_info {int invert; } ;


 int EINVAL ;

__attribute__((used)) static int cpu_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_cpu_info *info = par->matchinfo;

 if (info->invert & ~1)
  return -EINVAL;
 return 0;
}
