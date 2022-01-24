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
 int ENODEV ; 
 int FUNC0 (scalar_t__) ; 
 struct i2s_dev_data* FUNC1 (struct device*) ; 
 scalar_t__ mmACP_EXTERNAL_INTR_ENB ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int status;
	struct i2s_dev_data *adata = FUNC1(dev);

	status = FUNC0(adata->acp3x_base);
	if (status)
		return -ENODEV;
	FUNC2(1, adata->acp3x_base + mmACP_EXTERNAL_INTR_ENB);
	return 0;
}