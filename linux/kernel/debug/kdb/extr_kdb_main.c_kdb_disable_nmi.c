
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable_nmi ) (int ) ;} ;


 TYPE_1__ arch_kgdb_ops ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int kdb_nmi_disabled ;
 int stub1 (int ) ;

__attribute__((used)) static int kdb_disable_nmi(int argc, const char *argv[])
{
 if (atomic_read(&kdb_nmi_disabled))
  return 0;
 atomic_set(&kdb_nmi_disabled, 1);
 arch_kgdb_ops.enable_nmi(0);
 return 0;
}
