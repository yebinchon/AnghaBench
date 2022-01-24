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
struct uniphier_aio_sub {int /*<<< orphan*/  params; TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {scalar_t__ dir; TYPE_3__ oport; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOUTFADECTR0 ; 
 int AUD_VOL_FADE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPORTMXTYVOLPARA1_SLOPEU_MASK ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int OPORTMXTYVOLPARA2_FADE_FADEIN ; 
 int OPORTMXTYVOLPARA2_FADE_FADEOUT ; 
 int /*<<< orphan*/  OPORTMXTYVOLPARA2_FADE_MASK ; 
 int /*<<< orphan*/  OPORTMXTYVOLPARA2_TARGET_MASK ; 
 scalar_t__ PORT_DIR_INPUT ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct uniphier_aio_sub*) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct uniphier_aio_sub *sub, int vol)
{
	struct regmap *r = sub->aio->chip->regmap;
	int oport_map = sub->swm->oport.map;
	int cur, diff, slope = 0, fs;

	if (sub->swm->dir == PORT_DIR_INPUT)
		return;

	cur = FUNC4(sub);
	diff = FUNC3(vol - cur);
	fs = FUNC6(&sub->params);
	if (fs)
		slope = diff / AUD_VOL_FADE_TIME * 1000 / fs;
	slope = FUNC5(1, slope);

	FUNC7(r, FUNC1(oport_map, 0),
			   OPORTMXTYVOLPARA1_SLOPEU_MASK, slope << 16);
	FUNC7(r, FUNC2(oport_map, 0),
			   OPORTMXTYVOLPARA2_TARGET_MASK, vol);

	if (cur < vol)
		FUNC7(r, FUNC2(oport_map, 0),
				   OPORTMXTYVOLPARA2_FADE_MASK,
				   OPORTMXTYVOLPARA2_FADE_FADEIN);
	else
		FUNC7(r, FUNC2(oport_map, 0),
				   OPORTMXTYVOLPARA2_FADE_MASK,
				   OPORTMXTYVOLPARA2_FADE_FADEOUT);

	FUNC8(r, AOUTFADECTR0, FUNC0(oport_map));
}