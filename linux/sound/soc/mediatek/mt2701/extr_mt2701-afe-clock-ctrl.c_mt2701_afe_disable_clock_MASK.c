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
struct mtk_base_afe {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_DAC_CON0 ; 
 int /*<<< orphan*/  AFE_DAC_CON0_AFE_ON ; 
 int /*<<< orphan*/  ASYS_TOP_CON ; 
 int /*<<< orphan*/  ASYS_TOP_CON_ASYS_TIMING_ON ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_base_afe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct mtk_base_afe *afe)
{
	FUNC1(afe->regmap, ASYS_TOP_CON,
			   ASYS_TOP_CON_ASYS_TIMING_ON, 0);
	FUNC1(afe->regmap, AFE_DAC_CON0,
			   AFE_DAC_CON0_AFE_ON, 0);

	FUNC0(afe);

	return 0;
}