
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kvm_vm {int pgd; int pgd_created; } ;
typedef int FILE ;


 int virt_dump_region (int *,struct kvm_vm*,int ,int ) ;

void virt_dump(FILE *stream, struct kvm_vm *vm, uint8_t indent)
{
 if (!vm->pgd_created)
  return;

 virt_dump_region(stream, vm, indent, vm->pgd);
}
