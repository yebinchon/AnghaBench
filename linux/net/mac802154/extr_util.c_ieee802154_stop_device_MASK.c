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
struct ieee802154_local {int /*<<< orphan*/  ifs_timer; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee802154_local*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee802154_local *local)
{
	FUNC1(local->workqueue);
	FUNC2(&local->ifs_timer);
	FUNC0(local);
}