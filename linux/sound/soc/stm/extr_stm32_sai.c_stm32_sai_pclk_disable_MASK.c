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
struct stm32_sai_data {int /*<<< orphan*/  pclk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct stm32_sai_data* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct stm32_sai_data *sai = FUNC1(dev);

	FUNC0(sai->pclk);

	return 0;
}