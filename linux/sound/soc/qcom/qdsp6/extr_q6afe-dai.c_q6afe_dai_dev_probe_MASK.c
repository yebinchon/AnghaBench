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
struct q6afe_dai_data {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct q6afe_dai_data*) ; 
 struct q6afe_dai_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct q6afe_dai_data*) ; 
 int /*<<< orphan*/  q6afe_dai_component ; 
 int /*<<< orphan*/  q6afe_dais ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct q6afe_dai_data *dai_data;
	struct device *dev = &pdev->dev;

	dai_data = FUNC2(dev, sizeof(*dai_data), GFP_KERNEL);
	if (!dai_data)
		return -ENOMEM;

	FUNC1(dev, dai_data);

	FUNC4(dev, dai_data);

	return FUNC3(dev, &q6afe_dai_component,
					  q6afe_dais, FUNC0(q6afe_dais));
}