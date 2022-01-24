#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct uniphier_aio_sub {TYPE_3__* swm; TYPE_5__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_10__ {TYPE_4__* chip; } ;
struct TYPE_9__ {struct regmap* regmap; } ;
struct TYPE_7__ {int /*<<< orphan*/  map; } ;
struct TYPE_6__ {int /*<<< orphan*/  map; } ;
struct TYPE_8__ {TYPE_2__ rb; TYPE_1__ ch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDA2D_STRT0 ; 
 int CDA2D_STRT0_STOP_START ; 
 int CDA2D_STRT0_STOP_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct uniphier_aio_sub *sub, int enable)
{
	struct regmap *r = sub->aio->chip->regmap;

	if (enable) {
		FUNC3(r, CDA2D_STRT0,
			     CDA2D_STRT0_STOP_START | FUNC0(sub->swm->ch.map));

		FUNC2(r, FUNC1(0),
				   FUNC0(sub->swm->rb.map),
				   FUNC0(sub->swm->rb.map));
	} else {
		FUNC3(r, CDA2D_STRT0,
			     CDA2D_STRT0_STOP_STOP | FUNC0(sub->swm->ch.map));

		FUNC2(r, FUNC1(0),
				   FUNC0(sub->swm->rb.map),
				   0);
	}
}