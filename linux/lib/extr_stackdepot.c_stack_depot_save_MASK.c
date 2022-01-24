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
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
struct stack_record {TYPE_1__ handle; struct stack_record* next; } ;
struct page {int dummy; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  depot_stack_handle_t ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int GFP_KERNEL ; 
 int GFP_ZONEMASK ; 
 int /*<<< orphan*/  STACK_ALLOC_ORDER ; 
 size_t STACK_HASH_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_NOWARN ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct stack_record* FUNC2 (unsigned long*,unsigned int,size_t,void**,int) ; 
 int /*<<< orphan*/  depot_lock ; 
 struct stack_record* FUNC3 (struct stack_record*,unsigned long*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 struct stack_record* next_slab_inited ; 
 void* FUNC7 (struct page*) ; 
 struct stack_record* FUNC8 (struct stack_record**) ; 
 int /*<<< orphan*/  FUNC9 (struct stack_record**,struct stack_record*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct stack_record** stack_table ; 
 scalar_t__ FUNC12 (int) ; 

depot_stack_handle_t FUNC13(unsigned long *entries,
				      unsigned int nr_entries,
				      gfp_t alloc_flags)
{
	struct stack_record *found = NULL, **bucket;
	depot_stack_handle_t retval = 0;
	struct page *page = NULL;
	void *prealloc = NULL;
	unsigned long flags;
	u32 hash;

	if (FUNC12(nr_entries == 0))
		goto fast_exit;

	hash = FUNC5(entries, nr_entries);
	bucket = &stack_table[hash & STACK_HASH_MASK];

	/*
	 * Fast path: look the stack trace up without locking.
	 * The smp_load_acquire() here pairs with smp_store_release() to
	 * |bucket| below.
	 */
	found = FUNC3(FUNC8(bucket), entries,
			   nr_entries, hash);
	if (found)
		goto exit;

	/*
	 * Check if the current or the next stack slab need to be initialized.
	 * If so, allocate the memory - we won't be able to do that under the
	 * lock.
	 *
	 * The smp_load_acquire() here pairs with smp_store_release() to
	 * |next_slab_inited| in depot_alloc_stack() and init_stack_slab().
	 */
	if (FUNC12(!FUNC8(&next_slab_inited))) {
		/*
		 * Zero out zone modifiers, as we don't have specific zone
		 * requirements. Keep the flags related to allocation in atomic
		 * contexts and I/O.
		 */
		alloc_flags &= ~GFP_ZONEMASK;
		alloc_flags &= (GFP_ATOMIC | GFP_KERNEL);
		alloc_flags |= __GFP_NOWARN;
		page = FUNC1(alloc_flags, STACK_ALLOC_ORDER);
		if (page)
			prealloc = FUNC7(page);
	}

	FUNC10(&depot_lock, flags);

	found = FUNC3(*bucket, entries, nr_entries, hash);
	if (!found) {
		struct stack_record *new =
			FUNC2(entries, nr_entries,
					  hash, &prealloc, alloc_flags);
		if (new) {
			new->next = *bucket;
			/*
			 * This smp_store_release() pairs with
			 * smp_load_acquire() from |bucket| above.
			 */
			FUNC9(bucket, new);
			found = new;
		}
	} else if (prealloc) {
		/*
		 * We didn't need to store this stack trace, but let's keep
		 * the preallocated memory for the future.
		 */
		FUNC0(!FUNC6(&prealloc));
	}

	FUNC11(&depot_lock, flags);
exit:
	if (prealloc) {
		/* Nobody used this memory, ok to free it. */
		FUNC4((unsigned long)prealloc, STACK_ALLOC_ORDER);
	}
	if (found)
		retval = found->handle.handle;
fast_exit:
	return retval;
}