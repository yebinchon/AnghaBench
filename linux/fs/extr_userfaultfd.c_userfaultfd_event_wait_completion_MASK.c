#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {int vm_flags; TYPE_9__ vm_userfaultfd_ctx; struct vm_area_struct* vm_next; } ;
struct TYPE_10__ {scalar_t__ reserved1; } ;
struct TYPE_11__ {TYPE_1__ reserved; } ;
struct TYPE_12__ {scalar_t__ event; TYPE_2__ arg; } ;
struct userfaultfd_wait_queue {TYPE_3__ msg; int /*<<< orphan*/  wq; struct userfaultfd_ctx* ctx; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; } ;
struct userfaultfd_ctx {int /*<<< orphan*/  mmap_changing; struct mm_struct* mm; TYPE_7__ event_wqh; int /*<<< orphan*/  fd_wqh; int /*<<< orphan*/  released; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;
struct TYPE_13__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 TYPE_9__ NULL_VM_UFFD_CTX ; 
 int PF_EXITING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 scalar_t__ UFFD_EVENT_FORK ; 
 int VM_UFFD_MISSING ; 
 int VM_UFFD_WP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct userfaultfd_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct userfaultfd_ctx *ctx,
					      struct userfaultfd_wait_queue *ewq)
{
	struct userfaultfd_ctx *release_new_ctx;

	if (FUNC2(current->flags & PF_EXITING))
		goto out;

	ewq->ctx = ctx;
	FUNC9(&ewq->wq, current);
	release_new_ctx = NULL;

	FUNC13(&ctx->event_wqh.lock);
	/*
	 * After the __add_wait_queue the uwq is visible to userland
	 * through poll/read().
	 */
	FUNC4(&ctx->event_wqh, &ewq->wq);
	for (;;) {
		FUNC12(TASK_KILLABLE);
		if (ewq->msg.event == 0)
			break;
		if (FUNC0(ctx->released) ||
		    FUNC8(current)) {
			/*
			 * &ewq->wq may be queued in fork_event, but
			 * __remove_wait_queue ignores the head
			 * parameter. It would be a problem if it
			 * didn't.
			 */
			FUNC5(&ctx->event_wqh, &ewq->wq);
			if (ewq->msg.event == UFFD_EVENT_FORK) {
				struct userfaultfd_ctx *new;

				new = (struct userfaultfd_ctx *)
					(unsigned long)
					ewq->msg.arg.reserved.reserved1;
				release_new_ctx = new;
			}
			break;
		}

		FUNC14(&ctx->event_wqh.lock);

		FUNC17(&ctx->fd_wqh, EPOLLIN);
		FUNC11();

		FUNC13(&ctx->event_wqh.lock);
	}
	FUNC6(TASK_RUNNING);
	FUNC14(&ctx->event_wqh.lock);

	if (release_new_ctx) {
		struct vm_area_struct *vma;
		struct mm_struct *mm = release_new_ctx->mm;

		/* the various vma->vm_userfaultfd_ctx still points to it */
		FUNC7(&mm->mmap_sem);
		/* no task can run (and in turn coredump) yet */
		FUNC1(!FUNC10(mm));
		for (vma = mm->mmap; vma; vma = vma->vm_next)
			if (vma->vm_userfaultfd_ctx.ctx == release_new_ctx) {
				vma->vm_userfaultfd_ctx = NULL_VM_UFFD_CTX;
				vma->vm_flags &= ~(VM_UFFD_WP | VM_UFFD_MISSING);
			}
		FUNC15(&mm->mmap_sem);

		FUNC16(release_new_ctx);
	}

	/*
	 * ctx may go away after this if the userfault pseudo fd is
	 * already released.
	 */
out:
	FUNC3(ctx->mmap_changing, false);
	FUNC16(ctx);
}