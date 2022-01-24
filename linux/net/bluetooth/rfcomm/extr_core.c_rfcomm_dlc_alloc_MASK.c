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
struct rfcomm_dlc {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*) ; 
 struct rfcomm_dlc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  rfcomm_dlc_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rfcomm_dlc *FUNC7(gfp_t prio)
{
	struct rfcomm_dlc *d = FUNC1(sizeof(*d), prio);

	if (!d)
		return NULL;

	FUNC6(&d->timer, rfcomm_dlc_timeout, 0);

	FUNC5(&d->tx_queue);
	FUNC2(&d->lock);
	FUNC3(&d->refcnt, 1);

	FUNC4(d);

	FUNC0("%p", d);

	return d;
}