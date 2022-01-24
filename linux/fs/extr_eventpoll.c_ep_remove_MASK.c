#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int /*<<< orphan*/  f_lock; } ;
struct eventpoll {TYPE_2__* user; int /*<<< orphan*/  lock; int /*<<< orphan*/  rbr; } ;
struct TYPE_3__ {struct file* file; } ;
struct epitem {int /*<<< orphan*/  rcu; int /*<<< orphan*/  rdllink; int /*<<< orphan*/  rbn; int /*<<< orphan*/  fllink; TYPE_1__ ffd; } ;
struct TYPE_4__ {int /*<<< orphan*/  epoll_watches; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct epitem*) ; 
 int /*<<< orphan*/  FUNC3 (struct eventpoll*,struct epitem*) ; 
 int /*<<< orphan*/  FUNC4 (struct epitem*) ; 
 int /*<<< orphan*/  epi_rcu_free ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct eventpoll *ep, struct epitem *epi)
{
	struct file *file = epi->ffd.file;

	FUNC7();

	/*
	 * Removes poll wait queue hooks.
	 */
	FUNC3(ep, epi);

	/* Remove the current item from the list of epoll hooks */
	FUNC9(&file->f_lock);
	FUNC6(&epi->fllink);
	FUNC10(&file->f_lock);

	FUNC8(&epi->rbn, &ep->rbr);

	FUNC12(&ep->lock);
	if (FUNC2(epi))
		FUNC5(&epi->rdllink);
	FUNC13(&ep->lock);

	FUNC11(FUNC4(epi));
	/*
	 * At this point it is safe to free the eventpoll item. Use the union
	 * field epi->rcu, since we are trying to minimize the size of
	 * 'struct epitem'. The 'rbn' field is no longer in use. Protected by
	 * ep->mtx. The rcu read side, reverse_path_check_proc(), does not make
	 * use of the rbn field.
	 */
	FUNC1(&epi->rcu, epi_rcu_free);

	FUNC0(&ep->user->epoll_watches);

	return 0;
}