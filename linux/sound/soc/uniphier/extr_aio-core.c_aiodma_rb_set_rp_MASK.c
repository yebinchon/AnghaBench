#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_aio_sub {TYPE_2__* swm; TYPE_3__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_8__ {struct regmap* regmap; } ;
struct TYPE_7__ {TYPE_4__* chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;
struct TYPE_6__ {TYPE_1__ rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDA2D_RDPTRLOAD ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uniphier_aio_sub *sub, u64 pos)
{
	struct regmap *r = sub->aio->chip->regmap;
	u32 tmp;
	int i;

	FUNC4(r, FUNC1(sub->swm->rb.map), (u32)pos);
	FUNC4(r, FUNC2(sub->swm->rb.map), (u32)(pos >> 32));
	FUNC4(r, CDA2D_RDPTRLOAD, FUNC0(sub->swm->rb.map));
	/* Wait for setup */
	for (i = 0; i < 6; i++)
		FUNC3(r, FUNC1(sub->swm->rb.map), &tmp);
}