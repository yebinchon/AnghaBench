
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct kvm_vm {int mode; int pgtable_levels; int pa_bits; int va_bits; int page_size; int page_shift; unsigned long long max_gfn; void* vpages_mapped; void* vpages_valid; scalar_t__ type; } ;
typedef enum vm_guest_mode { ____Placeholder_vm_guest_mode } vm_guest_mode ;


 int DEBUG (char*,int) ;
 scalar_t__ KVM_VM_TYPE_ARM_IPA_SIZE (int) ;
 int TEST_ASSERT (int,char*,...) ;
 int VM_MEM_SRC_ANONYMOUS ;







 struct kvm_vm* calloc (int,int) ;
 int kvm_get_cpu_address_width (int*,int*) ;
 void* sparsebit_alloc () ;
 int sparsebit_set_num (void*,unsigned long long,unsigned long long) ;
 int vm_guest_mode_string (int) ;
 int vm_open (struct kvm_vm*,int) ;
 int vm_userspace_mem_region_add (struct kvm_vm*,int ,int ,int ,scalar_t__,int ) ;

struct kvm_vm *_vm_create(enum vm_guest_mode mode, uint64_t phy_pages, int perm)
{
 struct kvm_vm *vm;

 DEBUG("Testing guest mode: %s\n", vm_guest_mode_string(mode));

 vm = calloc(1, sizeof(*vm));
 TEST_ASSERT(vm != ((void*)0), "Insufficient Memory");

 vm->mode = mode;
 vm->type = 0;


 switch (vm->mode) {
 case 130:
  vm->pgtable_levels = 4;
  vm->pa_bits = 52;
  vm->va_bits = 48;
  vm->page_size = 0x1000;
  vm->page_shift = 12;
  break;
 case 129:
  vm->pgtable_levels = 3;
  vm->pa_bits = 52;
  vm->va_bits = 48;
  vm->page_size = 0x10000;
  vm->page_shift = 16;
  break;
 case 132:
  vm->pgtable_levels = 4;
  vm->pa_bits = 48;
  vm->va_bits = 48;
  vm->page_size = 0x1000;
  vm->page_shift = 12;
  break;
 case 131:
  vm->pgtable_levels = 3;
  vm->pa_bits = 48;
  vm->va_bits = 48;
  vm->page_size = 0x10000;
  vm->page_shift = 16;
  break;
 case 134:
  vm->pgtable_levels = 4;
  vm->pa_bits = 40;
  vm->va_bits = 48;
  vm->page_size = 0x1000;
  vm->page_shift = 12;
  break;
 case 133:
  vm->pgtable_levels = 3;
  vm->pa_bits = 40;
  vm->va_bits = 48;
  vm->page_size = 0x10000;
  vm->page_shift = 16;
  break;
 case 128:

  kvm_get_cpu_address_width(&vm->pa_bits, &vm->va_bits);
  TEST_ASSERT(vm->va_bits == 48, "Linear address width "
       "(%d bits) not supported", vm->va_bits);
  vm->pgtable_levels = 4;
  vm->page_size = 0x1000;
  vm->page_shift = 12;
  DEBUG("Guest physical address width detected: %d\n",
        vm->pa_bits);




  break;
 default:
  TEST_ASSERT(0, "Unknown guest mode, mode: 0x%x", mode);
 }






 vm_open(vm, perm);


 vm->vpages_valid = sparsebit_alloc();
 sparsebit_set_num(vm->vpages_valid,
  0, (1ULL << (vm->va_bits - 1)) >> vm->page_shift);
 sparsebit_set_num(vm->vpages_valid,
  (~((1ULL << (vm->va_bits - 1)) - 1)) >> vm->page_shift,
  (1ULL << (vm->va_bits - 1)) >> vm->page_shift);


 vm->max_gfn = ((1ULL << vm->pa_bits) >> vm->page_shift) - 1;


 vm->vpages_mapped = sparsebit_alloc();
 if (phy_pages != 0)
  vm_userspace_mem_region_add(vm, VM_MEM_SRC_ANONYMOUS,
         0, 0, phy_pages, 0);

 return vm;
}
