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
struct sun4i_i2s {void* field_fmt_sr; TYPE_1__* variant; int /*<<< orphan*/  regmap; void* field_fmt_wss; void* field_clkdiv_mclk_en; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  field_fmt_sr; int /*<<< orphan*/  field_fmt_wss; int /*<<< orphan*/  field_clkdiv_mclk_en; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					struct sun4i_i2s *i2s)
{
	i2s->field_clkdiv_mclk_en =
		FUNC2(dev, i2s->regmap,
					i2s->variant->field_clkdiv_mclk_en);
	if (FUNC0(i2s->field_clkdiv_mclk_en))
		return FUNC1(i2s->field_clkdiv_mclk_en);

	i2s->field_fmt_wss =
			FUNC2(dev, i2s->regmap,
						i2s->variant->field_fmt_wss);
	if (FUNC0(i2s->field_fmt_wss))
		return FUNC1(i2s->field_fmt_wss);

	i2s->field_fmt_sr =
			FUNC2(dev, i2s->regmap,
						i2s->variant->field_fmt_sr);
	if (FUNC0(i2s->field_fmt_sr))
		return FUNC1(i2s->field_fmt_sr);

	return 0;
}