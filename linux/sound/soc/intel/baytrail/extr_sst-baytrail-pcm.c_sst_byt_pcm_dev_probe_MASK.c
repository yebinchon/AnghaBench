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
struct sst_pdata {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  byt_dai_component ; 
 int /*<<< orphan*/  byt_dais ; 
 struct sst_pdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sst_pdata*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sst_pdata*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct sst_pdata *sst_pdata = FUNC1(&pdev->dev);
	int ret;

	ret = FUNC4(&pdev->dev, sst_pdata);
	if (ret < 0)
		return -ENODEV;

	ret = FUNC2(&pdev->dev, &byt_dai_component,
					 byt_dais, FUNC0(byt_dais));
	if (ret < 0)
		goto err_plat;

	return 0;

err_plat:
	FUNC3(&pdev->dev, sst_pdata);
	return ret;
}