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
struct sst_platform_data {int /*<<< orphan*/  strm_map_size; int /*<<< orphan*/  pdev_strm_map; } ;
struct sst_data {int /*<<< orphan*/  lock; struct platform_device* pdev; struct sst_platform_data* pdata; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sst_data*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpcm_strm_map ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sst_platform_dai ; 
 int /*<<< orphan*/  sst_soc_platform_drv ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sst_data *drv;
	int ret;
	struct sst_platform_data *pdata;

	drv = FUNC3(&pdev->dev, sizeof(*drv), GFP_KERNEL);
	if (drv == NULL) {
		return -ENOMEM;
	}

	pdata = FUNC3(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (pdata == NULL) {
		return -ENOMEM;
	}

	pdata->pdev_strm_map = dpcm_strm_map;
	pdata->strm_map_size = FUNC0(dpcm_strm_map);
	drv->pdata = pdata;
	drv->pdev = pdev;
	FUNC5(&drv->lock);
	FUNC2(&pdev->dev, drv);

	ret = FUNC4(&pdev->dev, &sst_soc_platform_drv,
				sst_platform_dai, FUNC0(sst_platform_dai));
	if (ret)
		FUNC1(&pdev->dev, "registering cpu dais failed\n");

	return ret;
}