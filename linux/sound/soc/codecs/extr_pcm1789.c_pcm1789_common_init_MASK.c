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
struct regmap {int dummy; } ;
struct pcm1789_private {int /*<<< orphan*/  work; int /*<<< orphan*/  reset; struct device* dev; struct regmap* regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct pcm1789_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct pcm1789_private* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  pcm1789_dai ; 
 int /*<<< orphan*/  pcm1789_work_queue ; 
 int /*<<< orphan*/  soc_component_dev_pcm1789 ; 

int FUNC9(struct device *dev, struct regmap *regmap)
{
	struct pcm1789_private *pcm1789;

	pcm1789 = FUNC5(dev, sizeof(struct pcm1789_private),
			       GFP_KERNEL);
	if (!pcm1789)
		return -ENOMEM;

	pcm1789->regmap = regmap;
	pcm1789->dev = dev;
	FUNC3(dev, pcm1789);

	pcm1789->reset = FUNC4(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(pcm1789->reset))
		return FUNC2(pcm1789->reset);

	FUNC7(pcm1789->reset, 0);
	FUNC8(300);

	FUNC0(&pcm1789->work, pcm1789_work_queue);

	return FUNC6(dev, &soc_component_dev_pcm1789,
					       &pcm1789_dai, 1);
}