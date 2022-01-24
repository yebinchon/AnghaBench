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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kvm_vm {int dummy; } ;
typedef  enum vm_guest_mode { ____Placeholder_vm_guest_mode } vm_guest_mode ;

/* Variables and functions */
 int DEFAULT_GUEST_PHY_PAGES ; 
 int /*<<< orphan*/  O_RDWR ; 
 struct kvm_vm* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  program_invocation_name ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static struct kvm_vm *FUNC4(enum vm_guest_mode mode, uint32_t vcpuid,
				uint64_t extra_mem_pages, void *guest_code)
{
	struct kvm_vm *vm;
	uint64_t extra_pg_pages = extra_mem_pages / 512 * 2;

	vm = FUNC0(mode, DEFAULT_GUEST_PHY_PAGES + extra_pg_pages, O_RDWR);
	FUNC1(vm, program_invocation_name, 0, 0);
#ifdef __x86_64__
	FUNC2(vm);
#endif
	FUNC3(vm, vcpuid, guest_code);
	return vm;
}