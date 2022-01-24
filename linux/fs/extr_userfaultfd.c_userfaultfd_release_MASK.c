#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {unsigned long vm_flags; TYPE_1__ vm_userfaultfd_ctx; int /*<<< orphan*/  vm_pgoff; int /*<<< orphan*/  vm_file; int /*<<< orphan*/  anon_vma; int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; struct vm_area_struct* vm_next; } ;
struct userfaultfd_wake_range {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct userfaultfd_ctx {int /*<<< orphan*/  fd_wqh; int /*<<< orphan*/  event_wqh; TYPE_2__ fault_pending_wqh; int /*<<< orphan*/  fault_wqh; int /*<<< orphan*/  released; struct mm_struct* mm; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;
struct inode {int dummy; } ;
struct file {struct userfaultfd_ctx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EPOLLHUP ; 
 TYPE_1__ NULL_VM_UFFD_CTX ; 
 int /*<<< orphan*/  TASK_NORMAL ; 
 unsigned long VM_UFFD_MISSING ; 
 unsigned long VM_UFFD_WP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct userfaultfd_wake_range*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,struct userfaultfd_wake_range*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct userfaultfd_ctx*) ; 
 struct vm_area_struct* FUNC13 (struct mm_struct*,struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct file *file)
{
	struct userfaultfd_ctx *ctx = file->private_data;
	struct mm_struct *mm = ctx->mm;
	struct vm_area_struct *vma, *prev;
	/* len == 0 means wake all */
	struct userfaultfd_wake_range range = { .len = 0, };
	unsigned long new_flags;
	bool still_valid;

	FUNC1(ctx->released, true);

	if (!FUNC6(mm))
		goto wakeup;

	/*
	 * Flush page faults out of all CPUs. NOTE: all page faults
	 * must be retried without returning VM_FAULT_SIGBUS if
	 * userfaultfd_ctx_get() succeeds but vma->vma_userfault_ctx
	 * changes while handle_userfault released the mmap_sem. So
	 * it's critical that released is set to true (above), before
	 * taking the mmap_sem for writing.
	 */
	FUNC5(&mm->mmap_sem);
	still_valid = FUNC7(mm);
	prev = NULL;
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		FUNC4();
		FUNC0(!!vma->vm_userfaultfd_ctx.ctx ^
		       !!(vma->vm_flags & (VM_UFFD_MISSING | VM_UFFD_WP)));
		if (vma->vm_userfaultfd_ctx.ctx != ctx) {
			prev = vma;
			continue;
		}
		new_flags = vma->vm_flags & ~(VM_UFFD_MISSING | VM_UFFD_WP);
		if (still_valid) {
			prev = FUNC13(mm, prev, vma->vm_start, vma->vm_end,
					 new_flags, vma->anon_vma,
					 vma->vm_file, vma->vm_pgoff,
					 FUNC14(vma),
					 NULL_VM_UFFD_CTX);
			if (prev)
				vma = prev;
			else
				prev = vma;
		}
		vma->vm_flags = new_flags;
		vma->vm_userfaultfd_ctx = NULL_VM_UFFD_CTX;
	}
	FUNC11(&mm->mmap_sem);
	FUNC8(mm);
wakeup:
	/*
	 * After no new page faults can wait on this fault_*wqh, flush
	 * the last page faults that may have been already waiting on
	 * the fault_*wqh.
	 */
	FUNC9(&ctx->fault_pending_wqh.lock);
	FUNC3(&ctx->fault_pending_wqh, TASK_NORMAL, &range);
	FUNC2(&ctx->fault_wqh, TASK_NORMAL, 1, &range);
	FUNC10(&ctx->fault_pending_wqh.lock);

	/* Flush pending events that may still wait on event_wqh */
	FUNC15(&ctx->event_wqh);

	FUNC16(&ctx->fd_wqh, EPOLLHUP);
	FUNC12(ctx);
	return 0;
}