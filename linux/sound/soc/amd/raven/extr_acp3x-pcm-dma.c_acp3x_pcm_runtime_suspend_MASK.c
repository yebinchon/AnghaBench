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
struct i2s_dev_data {scalar_t__ acp3x_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct i2s_dev_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ mmACP_EXTERNAL_INTR_ENB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	int status;
	struct i2s_dev_data *adata = FUNC2(dev);

	status = FUNC0(adata->acp3x_base);
	if (status)
		FUNC1(dev, "ACP de-init failed\n");
	else
		FUNC3(dev, "ACP de-initialized\n");

	FUNC4(0, adata->acp3x_base + mmACP_EXTERNAL_INTR_ENB);

	return 0;
}