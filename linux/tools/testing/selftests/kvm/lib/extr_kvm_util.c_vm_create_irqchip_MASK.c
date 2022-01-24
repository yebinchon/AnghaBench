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
struct kvm_vm {int has_irqchip; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_CREATE_IRQCHIP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct kvm_vm *vm)
{
	int ret;

	ret = FUNC1(vm->fd, KVM_CREATE_IRQCHIP, 0);
	FUNC0(ret == 0, "KVM_CREATE_IRQCHIP IOCTL failed, "
		"rc: %i errno: %i", ret, errno);

	vm->has_irqchip = true;
}