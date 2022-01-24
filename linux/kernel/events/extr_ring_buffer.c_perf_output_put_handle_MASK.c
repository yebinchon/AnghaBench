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
struct ring_buffer {int /*<<< orphan*/  wakeup; int /*<<< orphan*/  nest; int /*<<< orphan*/  head; TYPE_1__* user_page; } ;
struct perf_output_handle {unsigned long wakeup; struct ring_buffer* rb; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_head; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct perf_output_handle *handle)
{
	struct ring_buffer *rb = handle->rb;
	unsigned long head;
	unsigned int nest;

	/*
	 * If this isn't the outermost nesting, we don't have to update
	 * @rb->user_page->data_head.
	 */
	nest = FUNC0(rb->nest);
	if (nest > 1) {
		FUNC1(rb->nest, nest - 1);
		goto out;
	}

again:
	/*
	 * In order to avoid publishing a head value that goes backwards,
	 * we must ensure the load of @rb->head happens after we've
	 * incremented @rb->nest.
	 *
	 * Otherwise we can observe a @rb->head value before one published
	 * by an IRQ/NMI happening between the load and the increment.
	 */
	FUNC2();
	head = FUNC3(&rb->head);

	/*
	 * IRQ/NMI can happen here and advance @rb->head, causing our
	 * load above to be stale.
	 */

	/*
	 * Since the mmap() consumer (userspace) can run on a different CPU:
	 *
	 *   kernel				user
	 *
	 *   if (LOAD ->data_tail) {		LOAD ->data_head
	 *			(A)		smp_rmb()	(C)
	 *	STORE $data			LOAD $data
	 *	smp_wmb()	(B)		smp_mb()	(D)
	 *	STORE ->data_head		STORE ->data_tail
	 *   }
	 *
	 * Where A pairs with D, and B pairs with C.
	 *
	 * In our case (A) is a control dependency that separates the load of
	 * the ->data_tail and the stores of $data. In case ->data_tail
	 * indicates there is no room in the buffer to store $data we do not.
	 *
	 * D needs to be a full barrier since it separates the data READ
	 * from the tail WRITE.
	 *
	 * For B a WMB is sufficient since it separates two WRITEs, and for C
	 * an RMB is sufficient since it separates two READs.
	 *
	 * See perf_output_begin().
	 */
	FUNC6(); /* B, matches C */
	FUNC1(rb->user_page->data_head, head);

	/*
	 * We must publish the head before decrementing the nest count,
	 * otherwise an IRQ/NMI can publish a more recent head value and our
	 * write will (temporarily) publish a stale value.
	 */
	FUNC2();
	FUNC1(rb->nest, 0);

	/*
	 * Ensure we decrement @rb->nest before we validate the @rb->head.
	 * Otherwise we cannot be sure we caught the 'last' nested update.
	 */
	FUNC2();
	if (FUNC7(head != FUNC3(&rb->head))) {
		FUNC1(rb->nest, 1);
		goto again;
	}

	if (handle->wakeup != FUNC3(&rb->wakeup))
		FUNC4(handle);

out:
	FUNC5();
}