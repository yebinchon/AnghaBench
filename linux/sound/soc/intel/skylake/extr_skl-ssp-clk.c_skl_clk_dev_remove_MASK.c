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
struct skl_clk_data {int /*<<< orphan*/  parent; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_MAX_CLK_SRC ; 
 struct skl_clk_data* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skl_clk_data*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct skl_clk_data *data;

	data = FUNC0(pdev);
	FUNC2(data);
	FUNC1(data->parent, SKL_MAX_CLK_SRC);

	return 0;
}