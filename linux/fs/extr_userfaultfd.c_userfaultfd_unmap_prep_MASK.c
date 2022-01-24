#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {unsigned long vm_start; TYPE_1__ vm_userfaultfd_ctx; struct vm_area_struct* vm_next; } ;
struct userfaultfd_unmap_ctx {unsigned long start; unsigned long end; int /*<<< orphan*/  list; struct userfaultfd_ctx* ctx; } ;
struct userfaultfd_ctx {int features; int /*<<< orphan*/  mmap_changing; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UFFD_FEATURE_EVENT_UNMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct userfaultfd_ctx*,struct list_head*,unsigned long,unsigned long) ; 
 struct userfaultfd_unmap_ctx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct userfaultfd_ctx*) ; 

int FUNC5(struct vm_area_struct *vma,
			   unsigned long start, unsigned long end,
			   struct list_head *unmaps)
{
	for ( ; vma && vma->vm_start < end; vma = vma->vm_next) {
		struct userfaultfd_unmap_ctx *unmap_ctx;
		struct userfaultfd_ctx *ctx = vma->vm_userfaultfd_ctx.ctx;

		if (!ctx || !(ctx->features & UFFD_FEATURE_EVENT_UNMAP) ||
		    FUNC1(ctx, unmaps, start, end))
			continue;

		unmap_ctx = FUNC2(sizeof(*unmap_ctx), GFP_KERNEL);
		if (!unmap_ctx)
			return -ENOMEM;

		FUNC4(ctx);
		FUNC0(ctx->mmap_changing, true);
		unmap_ctx->ctx = ctx;
		unmap_ctx->start = start;
		unmap_ctx->end = end;
		FUNC3(&unmap_ctx->list, unmaps);
	}

	return 0;
}