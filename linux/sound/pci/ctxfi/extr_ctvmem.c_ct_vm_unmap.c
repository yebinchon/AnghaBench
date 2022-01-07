
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_vm_block {int dummy; } ;
struct ct_vm {int dummy; } ;


 int put_vm_block (struct ct_vm*,struct ct_vm_block*) ;

__attribute__((used)) static void ct_vm_unmap(struct ct_vm *vm, struct ct_vm_block *block)
{

 put_vm_block(vm, block);
}
