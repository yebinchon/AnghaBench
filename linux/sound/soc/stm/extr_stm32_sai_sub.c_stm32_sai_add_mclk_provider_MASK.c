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
struct stm32_sai_sub_data {int /*<<< orphan*/  sai_mclk; TYPE_1__* pdev; int /*<<< orphan*/  sai_ck; } ;
struct clk_hw {int /*<<< orphan*/  clk; int /*<<< orphan*/  init; } ;
struct stm32_sai_mclk_data {struct clk_hw hw; struct stm32_sai_sub_data* sai_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SAI_MCLK_NAME_LEN ; 
 scalar_t__ FUNC1 (struct stm32_sai_sub_data*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int FUNC5 (struct device*,struct clk_hw*) ; 
 char* FUNC6 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct stm32_sai_mclk_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,struct clk_hw*) ; 
 int /*<<< orphan*/  mclk_ops ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(struct stm32_sai_sub_data *sai)
{
	struct clk_hw *hw;
	struct stm32_sai_mclk_data *mclk;
	struct device *dev = &sai->pdev->dev;
	const char *pname = FUNC2(sai->sai_ck);
	char *mclk_name, *p, *s = (char *)pname;
	int ret, i = 0;

	mclk = FUNC7(dev, sizeof(*mclk), GFP_KERNEL);
	if (!mclk)
		return -ENOMEM;

	mclk_name = FUNC6(dev, sizeof(char),
				 SAI_MCLK_NAME_LEN, GFP_KERNEL);
	if (!mclk_name)
		return -ENOMEM;

	/*
	 * Forge mclk clock name from parent clock name and suffix.
	 * String after "_" char is stripped in parent name.
	 */
	p = mclk_name;
	while (*s && *s != '_' && (i < (SAI_MCLK_NAME_LEN - 7))) {
		*p++ = *s++;
		i++;
	}
	FUNC1(sai) ? FUNC9(p, "a_mclk") : FUNC9(p, "b_mclk");

	mclk->hw.init = FUNC0(mclk_name, pname, &mclk_ops, 0);
	mclk->sai_data = sai;
	hw = &mclk->hw;

	FUNC3(dev, "Register master clock %s\n", mclk_name);
	ret = FUNC5(&sai->pdev->dev, hw);
	if (ret) {
		FUNC4(dev, "mclk register returned %d\n", ret);
		return ret;
	}
	sai->sai_mclk = hw->clk;

	/* register mclk provider */
	return FUNC8(dev, of_clk_hw_simple_get, hw);
}