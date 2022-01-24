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
typedef  int /*<<< orphan*/  uint16_t ;
struct kvm_vm {int dummy; } ;
struct kvm_segment {int limit; int s; int type; int g; int present; int /*<<< orphan*/  selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vm*,struct kvm_segment*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_segment*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vm *vm, uint16_t selector,
	struct kvm_segment *segp)
{
	FUNC1(segp, 0, sizeof(*segp));
	segp->selector = selector;
	segp->limit = 0xFFFFFFFFu;
	segp->s = 0x1; /* kTypeCodeData */
	segp->type = 0x00 | 0x01 | 0x02; /* kFlagData | kFlagDataAccessed
					  * | kFlagDataWritable
					  */
	segp->g = true;
	segp->present = true;
	if (vm)
		FUNC0(vm, segp);
}