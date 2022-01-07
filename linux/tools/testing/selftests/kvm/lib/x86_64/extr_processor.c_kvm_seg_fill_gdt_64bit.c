
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int gdt; } ;
struct kvm_segment {int selector; int limit; int base; int s; int g; int db; int l; int present; int dpl; int type; } ;
struct desc64 {int limit0; int base0; int base1; int limit1; int base2; int base3; int g; int db; int l; int p; int dpl; int type; int s; } ;


 void* addr_gva2hva (struct kvm_vm*,int ) ;

__attribute__((used)) static void kvm_seg_fill_gdt_64bit(struct kvm_vm *vm, struct kvm_segment *segp)
{
 void *gdt = addr_gva2hva(vm, vm->gdt);
 struct desc64 *desc = gdt + (segp->selector >> 3) * 8;

 desc->limit0 = segp->limit & 0xFFFF;
 desc->base0 = segp->base & 0xFFFF;
 desc->base1 = segp->base >> 16;
 desc->s = segp->s;
 desc->type = segp->type;
 desc->dpl = segp->dpl;
 desc->p = segp->present;
 desc->limit1 = segp->limit >> 16;
 desc->l = segp->l;
 desc->db = segp->db;
 desc->g = segp->g;
 desc->base2 = segp->base >> 24;
 if (!segp->s)
  desc->base3 = segp->base >> 32;
}
