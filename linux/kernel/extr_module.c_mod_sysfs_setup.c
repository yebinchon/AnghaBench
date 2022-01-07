
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct load_info {int dummy; } ;
struct kernel_param {int dummy; } ;



__attribute__((used)) static int mod_sysfs_setup(struct module *mod,
      const struct load_info *info,
      struct kernel_param *kparam,
      unsigned int num_params)
{
 return 0;
}
