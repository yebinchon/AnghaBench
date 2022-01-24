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
struct gnet_dump {int xstats_len; scalar_t__ lock; scalar_t__ tail; int /*<<< orphan*/  xstats; scalar_t__ compat_xstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TCA_STATS_APP ; 
 int /*<<< orphan*/  TCA_STATS_PAD ; 
 int FUNC0 (struct gnet_dump*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int
FUNC3(struct gnet_dump *d, void *st, int len)
{
	if (d->compat_xstats) {
		d->xstats = FUNC1(st, len, GFP_ATOMIC);
		if (!d->xstats)
			goto err_out;
		d->xstats_len = len;
	}

	if (d->tail)
		return FUNC0(d, TCA_STATS_APP, st, len,
				       TCA_STATS_PAD);

	return 0;

err_out:
	if (d->lock)
		FUNC2(d->lock);
	d->xstats_len = 0;
	return -1;
}