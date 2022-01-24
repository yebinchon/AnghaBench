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
struct pcm179x_private {struct regmap* regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct pcm179x_private*) ; 
 struct pcm179x_private* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pcm179x_dai ; 
 int /*<<< orphan*/  soc_component_dev_pcm179x ; 

int FUNC3(struct device *dev, struct regmap *regmap)
{
	struct pcm179x_private *pcm179x;

	pcm179x = FUNC1(dev, sizeof(struct pcm179x_private),
				GFP_KERNEL);
	if (!pcm179x)
		return -ENOMEM;

	pcm179x->regmap = regmap;
	FUNC0(dev, pcm179x);

	return FUNC2(dev,
			&soc_component_dev_pcm179x, &pcm179x_dai, 1);
}