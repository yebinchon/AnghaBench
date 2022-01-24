#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {TYPE_1__ vm_userfaultfd_ctx; struct mm_struct* vm_mm; } ;
struct TYPE_6__ {unsigned long start; unsigned long end; } ;
struct TYPE_7__ {TYPE_2__ remove; } ;
struct TYPE_8__ {TYPE_3__ arg; int /*<<< orphan*/  event; } ;
struct userfaultfd_wait_queue {TYPE_4__ msg; } ;
struct userfaultfd_ctx {int features; int /*<<< orphan*/  mmap_changing; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  UFFD_EVENT_REMOVE ; 
 int UFFD_FEATURE_EVENT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct userfaultfd_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct userfaultfd_ctx*,struct userfaultfd_wait_queue*) ; 

bool FUNC5(struct vm_area_struct *vma,
			unsigned long start, unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;
	struct userfaultfd_ctx *ctx;
	struct userfaultfd_wait_queue ewq;

	ctx = vma->vm_userfaultfd_ctx.ctx;
	if (!ctx || !(ctx->features & UFFD_FEATURE_EVENT_REMOVE))
		return true;

	FUNC3(ctx);
	FUNC0(ctx->mmap_changing, true);
	FUNC2(&mm->mmap_sem);

	FUNC1(&ewq.msg);

	ewq.msg.event = UFFD_EVENT_REMOVE;
	ewq.msg.arg.remove.start = start;
	ewq.msg.arg.remove.end = end;

	FUNC4(ctx, &ewq);

	return false;
}