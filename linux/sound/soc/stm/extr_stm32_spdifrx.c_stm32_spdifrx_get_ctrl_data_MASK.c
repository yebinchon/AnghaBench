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
struct stm32_spdifrx_data {TYPE_1__* pdev; int /*<<< orphan*/  kclk; int /*<<< orphan*/  cs_completion; int /*<<< orphan*/  regmap; int /*<<< orphan*/  ub; int /*<<< orphan*/  cs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SPDIFRX_CR_CBDMAEN ; 
 int /*<<< orphan*/  SPDIFRX_CS_BYTES_NB ; 
 int /*<<< orphan*/  SPDIFRX_UB_BYTES_NB ; 
 int /*<<< orphan*/  STM32_SPDIFRX_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct stm32_spdifrx_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_spdifrx_data*) ; 
 int FUNC11 (struct stm32_spdifrx_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_spdifrx_data*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct stm32_spdifrx_data *spdifrx)
{
	int ret = 0;

	FUNC4(spdifrx->cs, 0, SPDIFRX_CS_BYTES_NB);
	FUNC4(spdifrx->ub, 0, SPDIFRX_UB_BYTES_NB);

	FUNC6(&spdifrx->pdev->dev);

	ret = FUNC9(spdifrx);
	if (ret < 0)
		return ret;

	ret = FUNC1(spdifrx->kclk);
	if (ret) {
		FUNC3(&spdifrx->pdev->dev, "Enable kclk failed: %d\n", ret);
		return ret;
	}

	ret = FUNC8(spdifrx->regmap, STM32_SPDIFRX_CR,
				 SPDIFRX_CR_CBDMAEN, SPDIFRX_CR_CBDMAEN);
	if (ret < 0)
		goto end;

	ret = FUNC11(spdifrx);
	if (ret < 0)
		goto end;

	if (FUNC13(&spdifrx->cs_completion,
						      FUNC5(100))
						      <= 0) {
		FUNC2(&spdifrx->pdev->dev, "Failed to get control data\n");
		ret = -EAGAIN;
	}

	FUNC12(spdifrx);
	FUNC10(spdifrx);

end:
	FUNC0(spdifrx->kclk);
	FUNC7(&spdifrx->pdev->dev);

	return ret;
}