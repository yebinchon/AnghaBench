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
 int /*<<< orphan*/  AFE_I2S_CON1 ; 
 int /*<<< orphan*/  AFE_I2S_CON2 ; 
 unsigned int AFE_I2S_CON2_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct mtk_base_afe *afe, bool enable)
{
	unsigned int val;

	FUNC0(afe->regmap, AFE_I2S_CON2, &val);
	if (!!(val & AFE_I2S_CON2_EN) == enable)
		return;

	/* input */
	FUNC1(afe->regmap, AFE_I2S_CON2, 0x1, enable);

	/* output */
	FUNC1(afe->regmap, AFE_I2S_CON1, 0x1, enable);
}