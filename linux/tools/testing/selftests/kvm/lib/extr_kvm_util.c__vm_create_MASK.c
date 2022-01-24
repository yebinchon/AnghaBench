#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct kvm_vm {int mode; int pgtable_levels; int pa_bits; int va_bits; int page_size; int page_shift; unsigned long long max_gfn; void* vpages_mapped; void* vpages_valid; scalar_t__ type; } ;
typedef  enum vm_guest_mode { ____Placeholder_vm_guest_mode } vm_guest_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  VM_MEM_SRC_ANONYMOUS ; 
#define  VM_MODE_P40V48_4K 134 
#define  VM_MODE_P40V48_64K 133 
#define  VM_MODE_P48V48_4K 132 
#define  VM_MODE_P48V48_64K 131 
#define  VM_MODE_P52V48_4K 130 
#define  VM_MODE_P52V48_64K 129 
#define  VM_MODE_PXXV48_4K 128 
 struct kvm_vm* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,unsigned long long,unsigned long long) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vm*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

struct kvm_vm *FUNC10(enum vm_guest_mode mode, uint64_t phy_pages, int perm)
{
	struct kvm_vm *vm;

	FUNC0("Testing guest mode: %s\n", FUNC7(mode));

	vm = FUNC3(1, sizeof(*vm));
	FUNC2(vm != NULL, "Insufficient Memory");

	vm->mode = mode;
	vm->type = 0;

	/* Setup mode specific traits. */
	switch (vm->mode) {
	case VM_MODE_P52V48_4K:
		vm->pgtable_levels = 4;
		vm->pa_bits = 52;
		vm->va_bits = 48;
		vm->page_size = 0x1000;
		vm->page_shift = 12;
		break;
	case VM_MODE_P52V48_64K:
		vm->pgtable_levels = 3;
		vm->pa_bits = 52;
		vm->va_bits = 48;
		vm->page_size = 0x10000;
		vm->page_shift = 16;
		break;
	case VM_MODE_P48V48_4K:
		vm->pgtable_levels = 4;
		vm->pa_bits = 48;
		vm->va_bits = 48;
		vm->page_size = 0x1000;
		vm->page_shift = 12;
		break;
	case VM_MODE_P48V48_64K:
		vm->pgtable_levels = 3;
		vm->pa_bits = 48;
		vm->va_bits = 48;
		vm->page_size = 0x10000;
		vm->page_shift = 16;
		break;
	case VM_MODE_P40V48_4K:
		vm->pgtable_levels = 4;
		vm->pa_bits = 40;
		vm->va_bits = 48;
		vm->page_size = 0x1000;
		vm->page_shift = 12;
		break;
	case VM_MODE_P40V48_64K:
		vm->pgtable_levels = 3;
		vm->pa_bits = 40;
		vm->va_bits = 48;
		vm->page_size = 0x10000;
		vm->page_shift = 16;
		break;
	case VM_MODE_PXXV48_4K:
#ifdef __x86_64__
		FUNC4(&vm->pa_bits, &vm->va_bits);
		FUNC2(vm->va_bits == 48, "Linear address width "
			    "(%d bits) not supported", vm->va_bits);
		vm->pgtable_levels = 4;
		vm->page_size = 0x1000;
		vm->page_shift = 12;
		FUNC0("Guest physical address width detected: %d\n",
		      vm->pa_bits);
#else
		TEST_ASSERT(false, "VM_MODE_PXXV48_4K not supported on "
			    "non-x86 platforms");
#endif
		break;
	default:
		FUNC2(false, "Unknown guest mode, mode: 0x%x", mode);
	}

#ifdef __aarch64__
	if (vm->pa_bits != 40)
		vm->type = KVM_VM_TYPE_ARM_IPA_SIZE(vm->pa_bits);
#endif

	FUNC8(vm, perm);

	/* Limit to VA-bit canonical virtual addresses. */
	vm->vpages_valid = FUNC5();
	FUNC6(vm->vpages_valid,
		0, (1ULL << (vm->va_bits - 1)) >> vm->page_shift);
	FUNC6(vm->vpages_valid,
		(~((1ULL << (vm->va_bits - 1)) - 1)) >> vm->page_shift,
		(1ULL << (vm->va_bits - 1)) >> vm->page_shift);

	/* Limit physical addresses to PA-bits. */
	vm->max_gfn = ((1ULL << vm->pa_bits) >> vm->page_shift) - 1;

	/* Allocate and setup memory for guest. */
	vm->vpages_mapped = FUNC5();
	if (phy_pages != 0)
		FUNC9(vm, VM_MEM_SRC_ANONYMOUS,
					    0, 0, phy_pages, 0);

	return vm;
}