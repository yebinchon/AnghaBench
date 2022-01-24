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
struct sst_pdata {int /*<<< orphan*/  dsp; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hsw_priv_data {int /*<<< orphan*/  hsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sst_pdata* FUNC1 (int /*<<< orphan*/ *) ; 
 struct hsw_priv_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hsw_dai_component ; 
 int /*<<< orphan*/  hsw_dais ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct hsw_priv_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sst_pdata*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct sst_pdata*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sst_pdata *sst_pdata = FUNC1(&pdev->dev);
	struct hsw_priv_data *priv_data;
	int ret;

	if (!sst_pdata)
		return -EINVAL;

	priv_data = FUNC2(&pdev->dev, sizeof(*priv_data), GFP_KERNEL);
	if (!priv_data)
		return -ENOMEM;

	ret = FUNC6(&pdev->dev, sst_pdata);
	if (ret < 0)
		return -ENODEV;

	priv_data->hsw = sst_pdata->dsp;
	FUNC4(pdev, priv_data);

	ret = FUNC3(&pdev->dev, &hsw_dai_component,
		hsw_dais, FUNC0(hsw_dais));
	if (ret < 0)
		goto err_plat;

	return 0;

err_plat:
	FUNC5(&pdev->dev, sst_pdata);
	return 0;
}