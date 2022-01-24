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
struct q6asm_dai_data {int sid; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {int* args; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SID_MASK_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct q6asm_dai_data*) ; 
 struct q6asm_dai_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct q6asm_dai_data*) ; 
 int /*<<< orphan*/  q6asm_fe_dai_component ; 
 int /*<<< orphan*/  q6asm_fe_dais ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct of_phandle_args args;
	struct q6asm_dai_data *pdata;
	int rc;

	pdata = FUNC2(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	rc = FUNC4(node, "iommus", 1, 0, &args);
	if (rc < 0)
		pdata->sid = -1;
	else
		pdata->sid = args.args[0] & SID_MASK_DEFAULT;

	FUNC1(dev, pdata);

	FUNC5(dev, pdata);

	return FUNC3(dev, &q6asm_fe_dai_component,
					q6asm_fe_dais,
					FUNC0(q6asm_fe_dais));
}