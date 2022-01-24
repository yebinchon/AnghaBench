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
struct snd_soc_dai {int dummy; } ;
struct jz4740_i2s {int /*<<< orphan*/  clk_i2s; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  JZ4740_I2S_CLKSRC_EXT 129 
#define  JZ4740_I2S_CLKSRC_PLL 128 
 struct clk* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct clk*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 struct jz4740_i2s* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai, int clk_id,
	unsigned int freq, int dir)
{
	struct jz4740_i2s *i2s = FUNC4(dai);
	struct clk *parent;
	int ret = 0;

	switch (clk_id) {
	case JZ4740_I2S_CLKSRC_EXT:
		parent = FUNC0(NULL, "ext");
		FUNC2(i2s->clk_i2s, parent);
		break;
	case JZ4740_I2S_CLKSRC_PLL:
		parent = FUNC0(NULL, "pll half");
		FUNC2(i2s->clk_i2s, parent);
		ret = FUNC3(i2s->clk_i2s, freq);
		break;
	default:
		return -EINVAL;
	}
	FUNC1(parent);

	return ret;
}