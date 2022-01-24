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
struct eventpoll {int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  rdllist; } ;
struct epoll_event {int events; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int events; int /*<<< orphan*/  data; } ;
struct epitem {int /*<<< orphan*/  rdllink; TYPE_1__ event; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int EPOLLWAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct epitem*) ; 
 int /*<<< orphan*/  FUNC1 (struct epitem*) ; 
 scalar_t__ FUNC2 (struct epitem*) ; 
 int /*<<< orphan*/  FUNC3 (struct epitem*) ; 
 scalar_t__ FUNC4 (struct epitem*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct epitem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct eventpoll *ep, struct epitem *epi,
		     const struct epoll_event *event)
{
	int pwake = 0;
	poll_table pt;

	FUNC9();

	FUNC7(&pt, NULL);

	/*
	 * Set the new event interest mask before calling f_op->poll();
	 * otherwise we might miss an event that happens between the
	 * f_op->poll() call and the new event set registering.
	 */
	epi->event.events = event->events; /* need barrier below */
	epi->event.data = event->data; /* protected by mtx */
	if (epi->event.events & EPOLLWAKEUP) {
		if (!FUNC2(epi))
			FUNC0(epi);
	} else if (FUNC2(epi)) {
		FUNC1(epi);
	}

	/*
	 * The following barrier has two effects:
	 *
	 * 1) Flush epi changes above to other CPUs.  This ensures
	 *    we do not miss events from ep_poll_callback if an
	 *    event occurs immediately after we call f_op->poll().
	 *    We need this because we did not take ep->lock while
	 *    changing epi above (but ep_poll_callback does take
	 *    ep->lock).
	 *
	 * 2) We also need to ensure we do not miss _past_ events
	 *    when calling f_op->poll().  This barrier also
	 *    pairs with the barrier in wq_has_sleeper (see
	 *    comments for wq_has_sleeper).
	 *
	 * This barrier will now guarantee ep_poll_callback or f_op->poll
	 * (or both) will notice the readiness of an item.
	 */
	FUNC10();

	/*
	 * Get current event bits. We can safely use the file* here because
	 * its usage count has been increased by the caller of this function.
	 * If the item is "hot" and it is not registered inside the ready
	 * list, push it inside.
	 */
	if (FUNC4(epi, &pt, 1)) {
		FUNC13(&ep->lock);
		if (!FUNC3(epi)) {
			FUNC8(&epi->rdllink, &ep->rdllist);
			FUNC5(epi);

			/* Notify waiting tasks that events are available */
			if (FUNC11(&ep->wq))
				FUNC12(&ep->wq);
			if (FUNC11(&ep->poll_wait))
				pwake++;
		}
		FUNC14(&ep->lock);
	}

	/* We have to call this outside the lock */
	if (pwake)
		FUNC6(&ep->poll_wait);

	return 0;
}