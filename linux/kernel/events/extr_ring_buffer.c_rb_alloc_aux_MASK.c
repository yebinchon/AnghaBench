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
struct ring_buffer {int aux_nr_pages; int aux_overwrite; long aux_watermark; int /*<<< orphan*/  aux_pgoff; int /*<<< orphan*/  aux_refcount; int /*<<< orphan*/  aux_priv; int /*<<< orphan*/ * aux_pages; int /*<<< orphan*/  free_aux; } ;
struct perf_event {int cpu; TYPE_1__* pmu; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_2__ {int capabilities; int /*<<< orphan*/  (* setup_aux ) (struct perf_event*,int /*<<< orphan*/ *,int,int) ;int /*<<< orphan*/  free_aux; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int PERF_PMU_CAP_AUX_NO_SG ; 
 int RING_BUFFER_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct page*) ; 
 struct page* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event*,int /*<<< orphan*/ *,int,int) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct ring_buffer *rb, struct perf_event *event,
		 pgoff_t pgoff, int nr_pages, long watermark, int flags)
{
	bool overwrite = !(flags & RING_BUFFER_WRITABLE);
	int node = (event->cpu == -1) ? -1 : FUNC1(event->cpu);
	int ret = -ENOMEM, max_order;

	if (!FUNC2(event))
		return -EOPNOTSUPP;

	/*
	 * We need to start with the max_order that fits in nr_pages,
	 * not the other way around, hence ilog2() and not get_order.
	 */
	max_order = FUNC3(nr_pages);

	/*
	 * PMU requests more than one contiguous chunks of memory
	 * for SW double buffering
	 */
	if (!overwrite) {
		if (!max_order)
			return -EINVAL;

		max_order--;
	}

	rb->aux_pages = FUNC4(nr_pages, sizeof(void *), GFP_KERNEL,
				     node);
	if (!rb->aux_pages)
		return -ENOMEM;

	rb->free_aux = event->pmu->free_aux;
	for (rb->aux_nr_pages = 0; rb->aux_nr_pages < nr_pages;) {
		struct page *page;
		int last, order;

		order = FUNC5(max_order, FUNC3(nr_pages - rb->aux_nr_pages));
		page = FUNC8(node, order);
		if (!page)
			goto out;

		for (last = rb->aux_nr_pages + (1 << FUNC7(page));
		     last > rb->aux_nr_pages; rb->aux_nr_pages++)
			rb->aux_pages[rb->aux_nr_pages] = FUNC6(page++);
	}

	/*
	 * In overwrite mode, PMUs that don't support SG may not handle more
	 * than one contiguous allocation, since they rely on PMI to do double
	 * buffering. In this case, the entire buffer has to be one contiguous
	 * chunk.
	 */
	if ((event->pmu->capabilities & PERF_PMU_CAP_AUX_NO_SG) &&
	    overwrite) {
		struct page *page = FUNC11(rb->aux_pages[0]);

		if (FUNC7(page) != max_order)
			goto out;
	}

	rb->aux_priv = event->pmu->setup_aux(event, rb->aux_pages, nr_pages,
					     overwrite);
	if (!rb->aux_priv)
		goto out;

	ret = 0;

	/*
	 * aux_pages (and pmu driver's private data, aux_priv) will be
	 * referenced in both producer's and consumer's contexts, thus
	 * we keep a refcount here to make sure either of the two can
	 * reference them safely.
	 */
	FUNC9(&rb->aux_refcount, 1);

	rb->aux_overwrite = overwrite;
	rb->aux_watermark = watermark;

	if (!rb->aux_watermark && !rb->aux_overwrite)
		rb->aux_watermark = nr_pages << (PAGE_SHIFT - 1);

out:
	if (!ret)
		rb->aux_pgoff = pgoff;
	else
		FUNC0(rb);

	return ret;
}