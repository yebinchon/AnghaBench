#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_sai_data {TYPE_1__* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct platform_device* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct stm32_sai_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct stm32_sai_data*,int) ; 
 int FUNC6 (struct stm32_sai_data*,int) ; 

__attribute__((used)) static int FUNC7(struct stm32_sai_data *sai_client,
			      struct device_node *np_provider,
			      int synco, int synci)
{
	struct platform_device *pdev = FUNC1(np_provider);
	struct stm32_sai_data *sai_provider;
	int ret;

	if (!pdev) {
		FUNC0(&sai_client->pdev->dev,
			"Device not found for node %pOFn\n", np_provider);
		FUNC2(np_provider);
		return -ENODEV;
	}

	sai_provider = FUNC3(pdev);
	if (!sai_provider) {
		FUNC0(&sai_client->pdev->dev,
			"SAI sync provider data not found\n");
		ret = -EINVAL;
		goto error;
	}

	/* Configure sync client */
	ret = FUNC5(sai_client, synci);
	if (ret < 0)
		goto error;

	/* Configure sync provider */
	ret = FUNC6(sai_provider, synco);

error:
	FUNC4(&pdev->dev);
	FUNC2(np_provider);
	return ret;
}