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
typedef  int /*<<< orphan*/  uint32_t ;
struct snd_soc_dai {scalar_t__ active; } ;
struct jz4740_i2s {int /*<<< orphan*/  clk_aic; int /*<<< orphan*/  clk_i2s; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_AIC_CONF_ENABLE ; 
 int /*<<< orphan*/  JZ_REG_AIC_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_i2s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4740_i2s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4740_i2s* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai)
{
	struct jz4740_i2s *i2s = FUNC4(dai);
	uint32_t conf;
	int ret;

	ret = FUNC1(i2s->clk_aic);
	if (ret)
		return ret;

	if (dai->active) {
		ret = FUNC1(i2s->clk_i2s);
		if (ret) {
			FUNC0(i2s->clk_aic);
			return ret;
		}

		conf = FUNC2(i2s, JZ_REG_AIC_CONF);
		conf |= JZ_AIC_CONF_ENABLE;
		FUNC3(i2s, JZ_REG_AIC_CONF, conf);
	}

	return 0;
}