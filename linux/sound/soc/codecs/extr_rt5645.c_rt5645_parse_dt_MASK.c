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
struct TYPE_2__ {int /*<<< orphan*/  jd_mode; int /*<<< orphan*/  dmic2_data_pin; int /*<<< orphan*/  dmic1_data_pin; int /*<<< orphan*/  in2_diff; } ;
struct rt5645_priv {TYPE_1__ pdata; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct rt5645_priv *rt5645, struct device *dev)
{
	rt5645->pdata.in2_diff = FUNC0(dev,
		"realtek,in2-differential");
	FUNC1(dev,
		"realtek,dmic1-data-pin", &rt5645->pdata.dmic1_data_pin);
	FUNC1(dev,
		"realtek,dmic2-data-pin", &rt5645->pdata.dmic2_data_pin);
	FUNC1(dev,
		"realtek,jd-mode", &rt5645->pdata.jd_mode);

	return 0;
}