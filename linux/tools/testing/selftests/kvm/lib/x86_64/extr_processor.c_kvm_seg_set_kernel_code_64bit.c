
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct kvm_vm {int dummy; } ;
struct kvm_segment {int limit; int s; int type; int g; int l; int present; int selector; } ;


 int kvm_seg_fill_gdt_64bit (struct kvm_vm*,struct kvm_segment*) ;
 int memset (struct kvm_segment*,int ,int) ;

__attribute__((used)) static void kvm_seg_set_kernel_code_64bit(struct kvm_vm *vm, uint16_t selector,
 struct kvm_segment *segp)
{
 memset(segp, 0, sizeof(*segp));
 segp->selector = selector;
 segp->limit = 0xFFFFFFFFu;
 segp->s = 0x1;
 segp->type = 0x08 | 0x01 | 0x02;


 segp->g = 1;
 segp->l = 1;
 segp->present = 1;
 if (vm)
  kvm_seg_fill_gdt_64bit(vm, segp);
}
