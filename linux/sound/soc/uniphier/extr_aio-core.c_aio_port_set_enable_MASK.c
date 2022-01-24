#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uniphier_aio_sub {TYPE_6__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  map; } ;
struct TYPE_10__ {int /*<<< orphan*/  map; } ;
struct TYPE_9__ {int /*<<< orphan*/  map; } ;
struct TYPE_12__ {scalar_t__ dir; TYPE_5__ iport; TYPE_4__ oport; TYPE_3__ oif; } ;
struct TYPE_8__ {TYPE_1__* chip; } ;
struct TYPE_7__ {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOUTENCTR0 ; 
 int /*<<< orphan*/  AOUTENCTR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IPORTMXCTR2_REQEN_DISABLE ; 
 int IPORTMXCTR2_REQEN_ENABLE ; 
 int IPORTMXCTR2_REQEN_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IPORTMXMASK_IUXCKMSK_MASK ; 
 int IPORTMXMASK_IUXCKMSK_OFF ; 
 int IPORTMXMASK_XCKMSK_MASK ; 
 int IPORTMXMASK_XCKMSK_OFF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int OPORTMXMASK_DXMSK_MASK ; 
 int OPORTMXMASK_DXMSK_OFF ; 
 int OPORTMXMASK_IUDXMSK_MASK ; 
 int OPORTMXMASK_IUDXMSK_OFF ; 
 int OPORTMXMASK_IUXCKMSK_MASK ; 
 int OPORTMXMASK_IUXCKMSK_OFF ; 
 int OPORTMXMASK_XCKMSK_MASK ; 
 int OPORTMXMASK_XCKMSK_OFF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PORT_DIR_OUTPUT ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct uniphier_aio_sub *sub, int enable)
{
	struct regmap *r = sub->aio->chip->regmap;

	if (sub->swm->dir == PORT_DIR_OUTPUT) {
		FUNC6(r, FUNC4(sub->swm->oport.map),
			     sub->swm->oif.map);

		FUNC5(r, FUNC3(sub->swm->oport.map),
				   OPORTMXMASK_IUDXMSK_MASK |
				   OPORTMXMASK_IUXCKMSK_MASK |
				   OPORTMXMASK_DXMSK_MASK |
				   OPORTMXMASK_XCKMSK_MASK,
				   OPORTMXMASK_IUDXMSK_OFF |
				   OPORTMXMASK_IUXCKMSK_OFF |
				   OPORTMXMASK_DXMSK_OFF |
				   OPORTMXMASK_XCKMSK_OFF);

		if (enable)
			FUNC6(r, AOUTENCTR0, FUNC0(sub->swm->oport.map));
		else
			FUNC6(r, AOUTENCTR1, FUNC0(sub->swm->oport.map));
	} else {
		FUNC5(r, FUNC2(sub->swm->iport.map),
				   IPORTMXMASK_IUXCKMSK_MASK |
				   IPORTMXMASK_XCKMSK_MASK,
				   IPORTMXMASK_IUXCKMSK_OFF |
				   IPORTMXMASK_XCKMSK_OFF);

		if (enable)
			FUNC5(r,
					   FUNC1(sub->swm->iport.map),
					   IPORTMXCTR2_REQEN_MASK,
					   IPORTMXCTR2_REQEN_ENABLE);
		else
			FUNC5(r,
					   FUNC1(sub->swm->iport.map),
					   IPORTMXCTR2_REQEN_MASK,
					   IPORTMXCTR2_REQEN_DISABLE);
	}
}