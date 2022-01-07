
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct kvm_vm {int va_bits; unsigned int pa_bits; } ;


 int TEST_ASSERT (int,char*,...) ;
 int ucall_mmio_init (struct kvm_vm*,int) ;

void ucall_init(struct kvm_vm *vm, void *arg)
{
 vm_paddr_t gpa, start, end, step, offset;
 unsigned int bits;
 bool ret;

 if (arg) {
  gpa = (vm_paddr_t)arg;
  ret = ucall_mmio_init(vm, gpa);
  TEST_ASSERT(ret, "Can't set ucall mmio address to %lx", gpa);
  return;
 }
 bits = vm->va_bits - 1;
 bits = vm->pa_bits < bits ? vm->pa_bits : bits;
 end = 1ul << bits;
 start = end * 5 / 8;
 step = end / 16;
 for (offset = 0; offset < end - start; offset += step) {
  if (ucall_mmio_init(vm, start - offset))
   return;
  if (ucall_mmio_init(vm, start + offset))
   return;
 }
 TEST_ASSERT(0, "Can't find a ucall mmio address");
}
