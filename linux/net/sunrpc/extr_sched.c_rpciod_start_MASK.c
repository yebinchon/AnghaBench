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
struct workqueue_struct {int dummy; } ;

/* Variables and functions */
 int WQ_HIGHPRI ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 struct workqueue_struct* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct workqueue_struct* rpciod_workqueue ; 
 struct workqueue_struct* xprtiod_workqueue ; 

__attribute__((used)) static int FUNC3(void)
{
	struct workqueue_struct *wq;

	/*
	 * Create the rpciod thread and wait for it to start.
	 */
	FUNC2("RPC:       creating workqueue rpciod\n");
	wq = FUNC0("rpciod", WQ_MEM_RECLAIM | WQ_UNBOUND, 0);
	if (!wq)
		goto out_failed;
	rpciod_workqueue = wq;
	/* Note: highpri because network receive is latency sensitive */
	wq = FUNC0("xprtiod", WQ_UNBOUND|WQ_MEM_RECLAIM|WQ_HIGHPRI, 0);
	if (!wq)
		goto free_rpciod;
	xprtiod_workqueue = wq;
	return 1;
free_rpciod:
	wq = rpciod_workqueue;
	rpciod_workqueue = NULL;
	FUNC1(wq);
out_failed:
	return 0;
}