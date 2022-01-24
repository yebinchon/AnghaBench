#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pktgen_thread {int /*<<< orphan*/  if_list; } ;
struct pktgen_dev {int /*<<< orphan*/  list; struct pktgen_thread* pg_thread; scalar_t__ running; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct pktgen_thread *t,
			     struct pktgen_dev *pkt_dev)
{
	int rv = 0;

	/* This function cannot be called concurrently, as its called
	 * under pktgen_thread_lock mutex, but it can run from
	 * userspace on another CPU than the kthread.  The if_lock()
	 * is used here to sync with concurrent instances of
	 * _rem_dev_from_if_list() invoked via kthread, which is also
	 * updating the if_list */
	FUNC0(t);

	if (pkt_dev->pg_thread) {
		FUNC3("ERROR: already assigned to a thread\n");
		rv = -EBUSY;
		goto out;
	}

	pkt_dev->running = 0;
	pkt_dev->pg_thread = t;
	FUNC2(&pkt_dev->list, &t->if_list);

out:
	FUNC1(t);
	return rv;
}