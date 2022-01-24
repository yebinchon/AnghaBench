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
struct kvm_vm {int /*<<< orphan*/  fd; } ;
struct kvm_dirty_log {void* dirty_bitmap; int slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_GET_DIRTY_LOG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_dirty_log*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct kvm_vm *vm, int slot, void *log)
{
	struct kvm_dirty_log args = { .dirty_bitmap = log, .slot = slot };
	int ret;

	ret = FUNC1(vm->fd, KVM_GET_DIRTY_LOG, &args);
	FUNC0(ret == 0, "%s: KVM_GET_DIRTY_LOG failed: %s",
		    FUNC2(-ret));
}