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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct jz4740_i2s {int version; void* clk_i2s; void* clk_aic; int /*<<< orphan*/  phys_base; void* base; } ;
typedef  enum jz47xx_i2s_version { ____Placeholder_jz47xx_i2s_version } jz47xx_i2s_version ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ JZ_I2S_JZ4780 ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SND_DMAENGINE_PCM_FLAG_COMPAT ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct jz4740_i2s* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jz4740_i2s_component ; 
 int /*<<< orphan*/  jz4740_i2s_dai ; 
 int /*<<< orphan*/  jz4740_of_matches ; 
 int /*<<< orphan*/  jz4780_i2s_dai ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct jz4740_i2s*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct jz4740_i2s *i2s;
	struct resource *mem;
	int ret;
	const struct of_device_id *match;

	i2s = FUNC4(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
	if (!i2s)
		return -ENOMEM;

	match = FUNC7(jz4740_of_matches, &pdev->dev);
	if (match)
		i2s->version = (enum jz47xx_i2s_version)match->data;

	mem = FUNC8(pdev, IORESOURCE_MEM, 0);
	i2s->base = FUNC3(&pdev->dev, mem);
	if (FUNC0(i2s->base))
		return FUNC1(i2s->base);

	i2s->phys_base = mem->start;

	i2s->clk_aic = FUNC2(&pdev->dev, "aic");
	if (FUNC0(i2s->clk_aic))
		return FUNC1(i2s->clk_aic);

	i2s->clk_i2s = FUNC2(&pdev->dev, "i2s");
	if (FUNC0(i2s->clk_i2s))
		return FUNC1(i2s->clk_i2s);

	FUNC9(pdev, i2s);

	if (i2s->version == JZ_I2S_JZ4780)
		ret = FUNC6(&pdev->dev,
			&jz4740_i2s_component, &jz4780_i2s_dai, 1);
	else
		ret = FUNC6(&pdev->dev,
			&jz4740_i2s_component, &jz4740_i2s_dai, 1);

	if (ret)
		return ret;

	return FUNC5(&pdev->dev, NULL,
		SND_DMAENGINE_PCM_FLAG_COMPAT);
}