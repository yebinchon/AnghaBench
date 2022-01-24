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
 int /*<<< orphan*/  FUNC0 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct workqueue_struct* rpciod_workqueue ; 
 struct workqueue_struct* xprtiod_workqueue ; 

__attribute__((used)) static void FUNC2(void)
{
	struct workqueue_struct *wq = NULL;

	if (rpciod_workqueue == NULL)
		return;
	FUNC1("RPC:       destroying workqueue rpciod\n");

	wq = rpciod_workqueue;
	rpciod_workqueue = NULL;
	FUNC0(wq);
	wq = xprtiod_workqueue;
	xprtiod_workqueue = NULL;
	FUNC0(wq);
}