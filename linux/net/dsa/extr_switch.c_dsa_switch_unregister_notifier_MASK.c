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
struct dsa_switch {int /*<<< orphan*/  dev; int /*<<< orphan*/  nb; TYPE_1__* dst; } ;
struct TYPE_2__ {int /*<<< orphan*/  nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct dsa_switch *ds)
{
	int err;

	err = FUNC1(&ds->dst->nh, &ds->nb);
	if (err)
		FUNC0(ds->dev, "failed to unregister notifier (%d)\n", err);
}