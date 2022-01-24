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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_aio_sub {TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  map; } ;
struct TYPE_8__ {TYPE_3__ oport; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPORTMXTYVOLGAINSTATUS_CUR_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct uniphier_aio_sub *sub)
{
	struct regmap *r = sub->aio->chip->regmap;
	u32 v;

	FUNC2(r, FUNC1(sub->swm->oport.map, 0), &v);

	return FUNC0(OPORTMXTYVOLGAINSTATUS_CUR_MASK, v);
}