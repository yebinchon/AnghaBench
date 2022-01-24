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
struct daio_mgr {int /*<<< orphan*/  mgr; int /*<<< orphan*/  imap_lock; int /*<<< orphan*/  imappers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct daio_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct daio_mgr *daio_mgr)
{
	unsigned long flags;

	/* free daio input mapper list */
	FUNC3(&daio_mgr->imap_lock, flags);
	FUNC0(&daio_mgr->imappers);
	FUNC4(&daio_mgr->imap_lock, flags);

	FUNC2(&daio_mgr->mgr);
	FUNC1(daio_mgr);

	return 0;
}