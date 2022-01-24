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
struct ring_buffer {unsigned long aux_head; void* aux_priv; int /*<<< orphan*/  aux_nest; scalar_t__ aux_watermark; scalar_t__ aux_wakeup; TYPE_1__* user_page; int /*<<< orphan*/  aux_overwrite; int /*<<< orphan*/  aux_refcount; int /*<<< orphan*/  aux_mmap_count; } ;
struct perf_output_handle {unsigned long head; struct perf_event* event; struct ring_buffer* rb; int /*<<< orphan*/  size; scalar_t__ wakeup; scalar_t__ aux_flags; } ;
struct perf_event {int /*<<< orphan*/  pending_disable; struct perf_event* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  aux_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ring_buffer* FUNC10 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC11 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void *FUNC13(struct perf_output_handle *handle,
			    struct perf_event *event)
{
	struct perf_event *output_event = event;
	unsigned long aux_head, aux_tail;
	struct ring_buffer *rb;
	unsigned int nest;

	if (output_event->parent)
		output_event = output_event->parent;

	/*
	 * Since this will typically be open across pmu::add/pmu::del, we
	 * grab ring_buffer's refcount instead of holding rcu read lock
	 * to make sure it doesn't disappear under us.
	 */
	rb = FUNC10(output_event);
	if (!rb)
		return NULL;

	if (!FUNC8(rb))
		goto err;

	/*
	 * If aux_mmap_count is zero, the aux buffer is in perf_mmap_close(),
	 * about to get freed, so we leave immediately.
	 *
	 * Checking rb::aux_mmap_count and rb::refcount has to be done in
	 * the same order, see perf_mmap_close. Otherwise we end up freeing
	 * aux pages in this path, which is a bug, because in_atomic().
	 */
	if (!FUNC4(&rb->aux_mmap_count))
		goto err;

	if (!FUNC9(&rb->aux_refcount))
		goto err;

	nest = FUNC1(rb->aux_nest);
	/*
	 * Nesting is not supported for AUX area, make sure nested
	 * writers are caught early
	 */
	if (FUNC2(nest))
		goto err_put;

	FUNC3(rb->aux_nest, nest + 1);

	aux_head = rb->aux_head;

	handle->rb = rb;
	handle->event = event;
	handle->head = aux_head;
	handle->size = 0;
	handle->aux_flags = 0;

	/*
	 * In overwrite mode, AUX data stores do not depend on aux_tail,
	 * therefore (A) control dependency barrier does not exist. The
	 * (B) <-> (C) ordering is still observed by the pmu driver.
	 */
	if (!rb->aux_overwrite) {
		aux_tail = FUNC1(rb->user_page->aux_tail);
		handle->wakeup = rb->aux_wakeup + rb->aux_watermark;
		if (aux_head - aux_tail < FUNC5(rb))
			handle->size = FUNC0(aux_head, aux_tail, FUNC5(rb));

		/*
		 * handle->size computation depends on aux_tail load; this forms a
		 * control dependency barrier separating aux_tail load from aux data
		 * store that will be enabled on successful return
		 */
		if (!handle->size) { /* A, matches D */
			event->pending_disable = FUNC12();
			FUNC6(handle);
			FUNC3(rb->aux_nest, 0);
			goto err_put;
		}
	}

	return handle->rb->aux_priv;

err_put:
	/* can't be last */
	FUNC7(rb);

err:
	FUNC11(rb);
	handle->event = NULL;

	return NULL;
}