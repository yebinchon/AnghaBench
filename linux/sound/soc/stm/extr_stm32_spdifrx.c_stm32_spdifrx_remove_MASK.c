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
struct stm32_spdifrx_data {scalar_t__ dmab; scalar_t__ ctrl_chan; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct stm32_spdifrx_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct stm32_spdifrx_data *spdifrx = FUNC1(pdev);

	if (spdifrx->ctrl_chan)
		FUNC0(spdifrx->ctrl_chan);

	if (spdifrx->dmab)
		FUNC2(spdifrx->dmab);

	return 0;
}