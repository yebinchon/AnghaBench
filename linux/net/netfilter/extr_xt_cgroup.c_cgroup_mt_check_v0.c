
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_cgroup_info_v0* matchinfo; } ;
struct xt_cgroup_info_v0 {int invert; } ;


 int EINVAL ;

__attribute__((used)) static int cgroup_mt_check_v0(const struct xt_mtchk_param *par)
{
 struct xt_cgroup_info_v0 *info = par->matchinfo;

 if (info->invert & ~1)
  return -EINVAL;

 return 0;
}
