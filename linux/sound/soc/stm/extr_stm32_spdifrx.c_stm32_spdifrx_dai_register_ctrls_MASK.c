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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stm32_spdifrx_ctrls ; 
 int /*<<< orphan*/  stm32_spdifrx_iec_ctrls ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *cpu_dai)
{
	int ret;

	ret = FUNC2(cpu_dai, stm32_spdifrx_iec_ctrls,
				       FUNC0(stm32_spdifrx_iec_ctrls));
	if (ret < 0)
		return ret;

	return FUNC1(cpu_dai->component,
					      stm32_spdifrx_ctrls,
					      FUNC0(stm32_spdifrx_ctrls));
}