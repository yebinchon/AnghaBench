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
struct sun4i_spdif_dev {int /*<<< orphan*/  spdif_clk; int /*<<< orphan*/  apb_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_spdif_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct sun4i_spdif_dev *host  = FUNC2(dev);
	int ret;

	ret = FUNC1(host->spdif_clk);
	if (ret)
		return ret;
	ret = FUNC1(host->apb_clk);
	if (ret)
		FUNC0(host->spdif_clk);

	return ret;
}