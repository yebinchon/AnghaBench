
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtdtor_param {struct xt_cgroup_info_v1* matchinfo; } ;
struct xt_cgroup_info_v1 {scalar_t__ priv; } ;


 int cgroup_put (scalar_t__) ;

__attribute__((used)) static void cgroup_mt_destroy_v1(const struct xt_mtdtor_param *par)
{
 struct xt_cgroup_info_v1 *info = par->matchinfo;

 if (info->priv)
  cgroup_put(info->priv);
}
