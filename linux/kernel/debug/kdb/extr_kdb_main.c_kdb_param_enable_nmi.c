
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_param {int dummy; } ;
struct TYPE_2__ {int (* enable_nmi ) (int) ;} ;


 int EINVAL ;
 TYPE_1__ arch_kgdb_ops ;
 int atomic_add_unless (int *,int,int ) ;
 int kdb_nmi_disabled ;
 int stub1 (int) ;

__attribute__((used)) static int kdb_param_enable_nmi(const char *val, const struct kernel_param *kp)
{
 if (!atomic_add_unless(&kdb_nmi_disabled, -1, 0))
  return -EINVAL;
 arch_kgdb_ops.enable_nmi(1);
 return 0;
}
