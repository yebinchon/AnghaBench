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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct aic31xx_priv {size_t rate_div_line; } ;
struct TYPE_2__ {scalar_t__ madc; scalar_t__ nadc; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC31XX_BCLKN ; 
 int /*<<< orphan*/  AIC31XX_MADC ; 
 int /*<<< orphan*/  AIC31XX_MDAC ; 
 int /*<<< orphan*/  AIC31XX_NADC ; 
 int /*<<< orphan*/  AIC31XX_NDAC ; 
 int /*<<< orphan*/  AIC31XX_PLLPR ; 
 int /*<<< orphan*/  AIC31XX_PM_MASK ; 
 TYPE_1__* aic31xx_divs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct aic31xx_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct aic31xx_priv *aic31xx = FUNC2(component);
	u8 mask = AIC31XX_PM_MASK;
	u8 on = AIC31XX_PM_MASK;

	FUNC0(component->dev, "codec clock -> on (rate %d)\n",
		aic31xx_divs[aic31xx->rate_div_line].rate);
	FUNC3(component, AIC31XX_PLLPR, mask, on);
	FUNC1(10);
	FUNC3(component, AIC31XX_NDAC, mask, on);
	FUNC3(component, AIC31XX_MDAC, mask, on);
	if (aic31xx_divs[aic31xx->rate_div_line].nadc)
		FUNC3(component, AIC31XX_NADC, mask, on);
	if (aic31xx_divs[aic31xx->rate_div_line].madc)
		FUNC3(component, AIC31XX_MADC, mask, on);
	FUNC3(component, AIC31XX_BCLKN, mask, on);
}