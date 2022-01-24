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
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_ep_links; } ;
struct eventpoll {int /*<<< orphan*/  lock; int /*<<< orphan*/  rbr; int /*<<< orphan*/  poll_wait; TYPE_1__* user; int /*<<< orphan*/  wq; int /*<<< orphan*/  rdllist; } ;
struct epoll_event {int events; } ;
struct epitem {scalar_t__ nwait; int /*<<< orphan*/  rdllink; int /*<<< orphan*/  rbn; int /*<<< orphan*/  fllink; int /*<<< orphan*/  ws; struct epoll_event event; int /*<<< orphan*/  next; int /*<<< orphan*/  ffd; struct eventpoll* ep; int /*<<< orphan*/  pwqlist; } ;
struct ep_pqueue {int /*<<< orphan*/  pt; struct epitem* epi; } ;
typedef  scalar_t__ __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  epoll_watches; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EPOLLWAKEUP ; 
 int /*<<< orphan*/  EP_UNACTIVE_PTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct epitem*) ; 
 scalar_t__ FUNC5 (struct epitem*) ; 
 scalar_t__ FUNC6 (struct epitem*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct epitem*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ep_ptable_queue_proc ; 
 int /*<<< orphan*/  FUNC9 (struct eventpoll*,struct epitem*) ; 
 int /*<<< orphan*/  FUNC10 (struct epitem*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct file*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct eventpoll*,struct epitem*) ; 
 int /*<<< orphan*/  FUNC13 (struct epitem*) ; 
 int /*<<< orphan*/  epi_cache ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct epitem* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct epitem*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 long max_user_watches ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC32(struct eventpoll *ep, const struct epoll_event *event,
		     struct file *tfile, int fd, int full_check)
{
	int error, pwake = 0;
	__poll_t revents;
	long user_watches;
	struct epitem *epi;
	struct ep_pqueue epq;

	FUNC21();

	user_watches = FUNC3(&ep->user->epoll_watches);
	if (FUNC26(user_watches >= max_user_watches))
		return -ENOSPC;
	if (!(epi = FUNC15(epi_cache, GFP_KERNEL)))
		return -ENOMEM;

	/* Item initialization follow here ... */
	FUNC0(&epi->rdllink);
	FUNC0(&epi->fllink);
	FUNC0(&epi->pwqlist);
	epi->ep = ep;
	FUNC11(&epi->ffd, tfile, fd);
	epi->event = *event;
	epi->nwait = 0;
	epi->next = EP_UNACTIVE_PTR;
	if (epi->event.events & EPOLLWAKEUP) {
		error = FUNC4(epi);
		if (error)
			goto error_create_wakeup_source;
	} else {
		FUNC1(epi->ws, NULL);
	}

	/* Initialize the poll table using the queue callback */
	epq.epi = epi;
	FUNC14(&epq.pt, ep_ptable_queue_proc);

	/*
	 * Attach the item to the poll hooks and get current event bits.
	 * We can safely use the file* here because its usage count has
	 * been increased by the caller of this function. Note that after
	 * this operation completes, the poll callback can start hitting
	 * the new item.
	 */
	revents = FUNC6(epi, &epq.pt, 1);

	/*
	 * We have to check if something went wrong during the poll wait queue
	 * install process. Namely an allocation for a wait queue failed due
	 * high memory pressure.
	 */
	error = -ENOMEM;
	if (epi->nwait < 0)
		goto error_unregister;

	/* Add the current item to the list of active epoll hook for this file */
	FUNC24(&tfile->f_lock);
	FUNC18(&epi->fllink, &tfile->f_ep_links);
	FUNC25(&tfile->f_lock);

	/*
	 * Add the current item to the RB tree. All RB tree operations are
	 * protected by "mtx", and ep_insert() is called with "mtx" held.
	 */
	FUNC9(ep, epi);

	/* now check if we've created too many backpaths */
	error = -EINVAL;
	if (full_check && FUNC23())
		goto error_remove_epi;

	/* We have to drop the new item inside our item list to keep track of it */
	FUNC30(&ep->lock);

	/* record NAPI ID of new item if present */
	FUNC10(epi);

	/* If the file is already "ready" we drop it inside the ready list */
	if (revents && !FUNC5(epi)) {
		FUNC17(&epi->rdllink, &ep->rdllist);
		FUNC7(epi);

		/* Notify waiting tasks that events are available */
		if (FUNC27(&ep->wq))
			FUNC28(&ep->wq);
		if (FUNC27(&ep->poll_wait))
			pwake++;
	}

	FUNC31(&ep->lock);

	FUNC2(&ep->user->epoll_watches);

	/* We have to call this outside the lock */
	if (pwake)
		FUNC8(&ep->poll_wait);

	return 0;

error_remove_epi:
	FUNC24(&tfile->f_lock);
	FUNC20(&epi->fllink);
	FUNC25(&tfile->f_lock);

	FUNC22(&epi->rbn, &ep->rbr);

error_unregister:
	FUNC12(ep, epi);

	/*
	 * We need to do this because an event could have been arrived on some
	 * allocated wait queue. Note that we don't care about the ep->ovflist
	 * list, since that is used/cleaned only inside a section bound by "mtx".
	 * And ep_insert() is called with "mtx" held.
	 */
	FUNC30(&ep->lock);
	if (FUNC5(epi))
		FUNC19(&epi->rdllink);
	FUNC31(&ep->lock);

	FUNC29(FUNC13(epi));

error_create_wakeup_source:
	FUNC16(epi_cache, epi);

	return error;
}