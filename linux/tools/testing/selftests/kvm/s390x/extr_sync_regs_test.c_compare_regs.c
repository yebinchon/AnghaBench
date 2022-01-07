
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_sync_regs {int dummy; } ;
struct kvm_regs {int dummy; } ;


 int REG_COMPARE (int ) ;
 int * gprs ;

__attribute__((used)) static void compare_regs(struct kvm_regs *left, struct kvm_sync_regs *right)
{
 int i;

 for (i = 0; i < 16; i++)
  REG_COMPARE(gprs[i]);
}
