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
typedef  scalar_t__ u64 ;
struct uniphier_aio_sub {int threshold; scalar_t__ wr_total; scalar_t__ rd_total; scalar_t__ wr_org; scalar_t__ rd_org; scalar_t__ wr_offs; scalar_t__ rd_offs; TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  map; } ;
struct TYPE_8__ {scalar_t__ dir; TYPE_3__ rb; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDA2D_RBADRSLOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDA2D_RBMXIX_REMAIN ; 
 int /*<<< orphan*/  CDA2D_RBMXIX_SPACE ; 
 int EINVAL ; 
 scalar_t__ PORT_DIR_OUTPUT ; 
 int /*<<< orphan*/  FUNC7 (struct uniphier_aio_sub*,scalar_t__) ; 
 int FUNC8 (struct uniphier_aio_sub*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uniphier_aio_sub*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

int FUNC14(struct uniphier_aio_sub *sub, u64 start, u64 end,
			 int period)
{
	struct regmap *r = sub->aio->chip->regmap;
	u64 size = end - start;
	int ret;

	if (end < start || period < 0)
		return -EINVAL;

	FUNC12(r, FUNC3(sub->swm->rb.map), 0);
	FUNC12(r, FUNC1(sub->swm->rb.map),
		     FUNC10(start));
	FUNC12(r, FUNC2(sub->swm->rb.map),
		     FUNC13(start));
	FUNC12(r, FUNC4(sub->swm->rb.map),
		     FUNC10(end));
	FUNC12(r, FUNC5(sub->swm->rb.map),
		     FUNC13(end));

	FUNC12(r, CDA2D_RBADRSLOAD, FUNC0(sub->swm->rb.map));

	ret = FUNC8(sub, size, 2 * period);
	if (ret)
		return ret;

	if (sub->swm->dir == PORT_DIR_OUTPUT) {
		FUNC7(sub, start);
		FUNC9(sub, end - period);

		FUNC11(r, FUNC6(sub->swm->rb.map),
				   CDA2D_RBMXIX_SPACE,
				   CDA2D_RBMXIX_SPACE);
	} else {
		FUNC7(sub, end - period);
		FUNC9(sub, start);

		FUNC11(r, FUNC6(sub->swm->rb.map),
				   CDA2D_RBMXIX_REMAIN,
				   CDA2D_RBMXIX_REMAIN);
	}

	sub->threshold = 2 * period;
	sub->rd_offs = 0;
	sub->wr_offs = 0;
	sub->rd_org = 0;
	sub->wr_org = 0;
	sub->rd_total = 0;
	sub->wr_total = 0;

	return 0;
}