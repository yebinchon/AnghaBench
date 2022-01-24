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
struct resource {scalar_t__ start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct hi6210_i2s {int /*<<< orphan*/  dai; int /*<<< orphan*/  clocks; void** clk; void* sysctrl; scalar_t__ base_phys; void* base; int /*<<< orphan*/  lock; struct device* dev; } ;
struct device_node {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 size_t CLK_DACODEC ; 
 size_t CLK_I2S_BASE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct hi6210_i2s*) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 struct hi6210_i2s* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hi6210_i2s_dai_init ; 
 int /*<<< orphan*/  hi6210_i2s_i2s_comp ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct hi6210_i2s *i2s;
	struct resource *res;
	int ret;

	i2s = FUNC6(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
	if (!i2s)
		return -ENOMEM;

	i2s->dev = dev;
	FUNC10(&i2s->lock);

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	i2s->base = FUNC5(dev, res);
	if (FUNC0(i2s->base))
		return FUNC2(i2s->base);

	i2s->base_phys = (phys_addr_t)res->start;
	i2s->dai = hi6210_i2s_dai_init;

	FUNC3(&pdev->dev, i2s);

	i2s->sysctrl = FUNC11(node,
						"hisilicon,sysctrl-syscon");
	if (FUNC0(i2s->sysctrl))
		return FUNC2(i2s->sysctrl);

	i2s->clk[CLK_DACODEC] = FUNC4(&pdev->dev, "dacodec");
	if (FUNC1(i2s->clk[CLK_DACODEC]))
		return FUNC2(i2s->clk[CLK_DACODEC]);
	i2s->clocks++;

	i2s->clk[CLK_I2S_BASE] = FUNC4(&pdev->dev, "i2s-base");
	if (FUNC1(i2s->clk[CLK_I2S_BASE]))
		return FUNC2(i2s->clk[CLK_I2S_BASE]);
	i2s->clocks++;

	ret = FUNC7(&pdev->dev, NULL, 0);
	if (ret)
		return ret;

	ret = FUNC8(&pdev->dev, &hi6210_i2s_i2s_comp,
					 &i2s->dai, 1);
	return ret;
}