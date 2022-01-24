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
struct pcxhr_rmh {int dummy; } ;
struct pcxhr_mgr {int /*<<< orphan*/  msg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 

int FUNC3(struct pcxhr_mgr *mgr, struct pcxhr_rmh *rmh)
{
	int err;

	FUNC0(&mgr->msg_lock);
	err = FUNC2(mgr, rmh);
	FUNC1(&mgr->msg_lock);
	return err;
}