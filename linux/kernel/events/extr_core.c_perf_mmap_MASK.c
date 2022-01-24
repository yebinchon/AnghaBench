#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; TYPE_5__* vm_mm; int /*<<< orphan*/ * vm_ops; } ;
struct user_struct {int /*<<< orphan*/  locked_vm; } ;
struct ring_buffer {scalar_t__ aux_pgoff; unsigned long aux_nr_pages; unsigned long nr_pages; long mmap_locked; long aux_mmap_locked; int /*<<< orphan*/  mmap_count; int /*<<< orphan*/  mmap_user; int /*<<< orphan*/  aux_mmap_count; TYPE_2__* user_page; } ;
struct TYPE_9__ {int /*<<< orphan*/  aux_watermark; int /*<<< orphan*/  wakeup_watermark; scalar_t__ watermark; scalar_t__ inherit; } ;
struct perf_event {int cpu; TYPE_1__* pmu; int /*<<< orphan*/  mmap_mutex; int /*<<< orphan*/  mmap_count; TYPE_4__ attr; struct ring_buffer* rb; TYPE_3__* ctx; } ;
struct file {struct perf_event* private_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  pinned_vm; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent_ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  aux_size; int /*<<< orphan*/  aux_offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* event_mapped ) (struct perf_event*,TYPE_5__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RING_BUFFER_WRITABLE ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int VM_DONTCOPY ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long,int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct user_struct* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC17 () ; 
 scalar_t__ FUNC18 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC20 (struct perf_event*) ; 
 int /*<<< orphan*/  perf_mmap_vmops ; 
 scalar_t__ FUNC21 () ; 
 struct ring_buffer* FUNC22 (unsigned long,int /*<<< orphan*/ ,int,int) ; 
 int FUNC23 (struct ring_buffer*,struct perf_event*,scalar_t__,unsigned long,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC25 (struct perf_event*,struct ring_buffer*) ; 
 unsigned long FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct perf_event*,TYPE_5__*) ; 
 int sysctl_perf_event_mlock ; 

__attribute__((used)) static int FUNC28(struct file *file, struct vm_area_struct *vma)
{
	struct perf_event *event = file->private_data;
	unsigned long user_locked, user_lock_limit;
	struct user_struct *user = FUNC12();
	unsigned long locked, lock_limit;
	struct ring_buffer *rb = NULL;
	unsigned long vma_size;
	unsigned long nr_pages;
	long user_extra = 0, extra = 0;
	int ret = 0, flags = 0;

	/*
	 * Don't allow mmap() of inherited per-task counters. This would
	 * create a performance issue due to all children writing to the
	 * same rb.
	 */
	if (event->cpu == -1 && event->attr.inherit)
		return -EINVAL;

	if (!(vma->vm_flags & VM_SHARED))
		return -EINVAL;

	vma_size = vma->vm_end - vma->vm_start;

	if (vma->vm_pgoff == 0) {
		nr_pages = (vma_size / PAGE_SIZE) - 1;
	} else {
		/*
		 * AUX area mapping: if rb->aux_nr_pages != 0, it's already
		 * mapped, all subsequent mappings should have the same size
		 * and offset. Must be above the normal perf buffer.
		 */
		u64 aux_offset, aux_size;

		if (!event->rb)
			return -EINVAL;

		nr_pages = vma_size / PAGE_SIZE;

		FUNC15(&event->mmap_mutex);
		ret = -EINVAL;

		rb = event->rb;
		if (!rb)
			goto aux_unlock;

		aux_offset = FUNC0(rb->user_page->aux_offset);
		aux_size = FUNC0(rb->user_page->aux_size);

		if (aux_offset < FUNC18(rb) + PAGE_SIZE)
			goto aux_unlock;

		if (aux_offset != vma->vm_pgoff << PAGE_SHIFT)
			goto aux_unlock;

		/* already mapped with a different offset */
		if (FUNC24(rb) && rb->aux_pgoff != vma->vm_pgoff)
			goto aux_unlock;

		if (aux_size != vma_size || aux_size != nr_pages * PAGE_SIZE)
			goto aux_unlock;

		/* already mapped with a different size */
		if (FUNC24(rb) && rb->aux_nr_pages != nr_pages)
			goto aux_unlock;

		if (!FUNC14(nr_pages))
			goto aux_unlock;

		if (!FUNC7(&rb->mmap_count))
			goto aux_unlock;

		if (FUNC24(rb)) {
			FUNC6(&rb->aux_mmap_count);
			ret = 0;
			goto unlock;
		}

		FUNC10(&rb->aux_mmap_count, 1);
		user_extra = nr_pages;

		goto accounting;
	}

	/*
	 * If we have rb pages ensure they're a power-of-two number, so we
	 * can do bitmasks instead of modulo.
	 */
	if (nr_pages != 0 && !FUNC14(nr_pages))
		return -EINVAL;

	if (vma_size != PAGE_SIZE * (1 + nr_pages))
		return -EINVAL;

	FUNC2(event->ctx->parent_ctx);
again:
	FUNC15(&event->mmap_mutex);
	if (event->rb) {
		if (event->rb->nr_pages != nr_pages) {
			ret = -EINVAL;
			goto unlock;
		}

		if (!FUNC7(&event->rb->mmap_count)) {
			/*
			 * Raced against perf_mmap_close() through
			 * perf_event_set_output(). Try again, hope for better
			 * luck.
			 */
			FUNC16(&event->mmap_mutex);
			goto again;
		}

		goto unlock;
	}

	user_extra = nr_pages + 1;

accounting:
	user_lock_limit = sysctl_perf_event_mlock >> (PAGE_SHIFT - 10);

	/*
	 * Increase the limit linearly with more CPUs:
	 */
	user_lock_limit *= FUNC17();

	user_locked = FUNC9(&user->locked_vm) + user_extra;

	if (user_locked <= user_lock_limit) {
		/* charge all to locked_vm */
	} else if (FUNC9(&user->locked_vm) >= user_lock_limit) {
		/* charge all to pinned_vm */
		extra = user_extra;
		user_extra = 0;
	} else {
		/*
		 * charge locked_vm until it hits user_lock_limit;
		 * charge the rest from pinned_vm
		 */
		extra = user_locked - user_lock_limit;
		user_extra -= extra;
	}

	lock_limit = FUNC26(RLIMIT_MEMLOCK);
	lock_limit >>= PAGE_SHIFT;
	locked = FUNC4(&vma->vm_mm->pinned_vm) + extra;

	if ((locked > lock_limit) && FUNC21() &&
		!FUNC11(CAP_IPC_LOCK)) {
		ret = -EPERM;
		goto unlock;
	}

	FUNC1(!rb && event->rb);

	if (vma->vm_flags & VM_WRITE)
		flags |= RING_BUFFER_WRITABLE;

	if (!rb) {
		rb = FUNC22(nr_pages,
			      event->attr.watermark ? event->attr.wakeup_watermark : 0,
			      event->cpu, flags);

		if (!rb) {
			ret = -ENOMEM;
			goto unlock;
		}

		FUNC10(&rb->mmap_count, 1);
		rb->mmap_user = FUNC13();
		rb->mmap_locked = extra;

		FUNC25(event, rb);

		FUNC19(event);
		FUNC20(event);
	} else {
		ret = FUNC23(rb, event, vma->vm_pgoff, nr_pages,
				   event->attr.aux_watermark, flags);
		if (!ret)
			rb->aux_mmap_locked = extra;
	}

unlock:
	if (!ret) {
		FUNC8(user_extra, &user->locked_vm);
		FUNC3(extra, &vma->vm_mm->pinned_vm);

		FUNC6(&event->mmap_count);
	} else if (rb) {
		FUNC5(&rb->mmap_count);
	}
aux_unlock:
	FUNC16(&event->mmap_mutex);

	/*
	 * Since pinned accounting is per vm we cannot allow fork() to copy our
	 * vma.
	 */
	vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND | VM_DONTDUMP;
	vma->vm_ops = &perf_mmap_vmops;

	if (event->pmu->event_mapped)
		event->pmu->event_mapped(event, vma->vm_mm);

	return ret;
}