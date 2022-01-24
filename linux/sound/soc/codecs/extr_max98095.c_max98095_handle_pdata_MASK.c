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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98095_priv {struct max98095_pdata* pdata; } ;
struct max98095_pdata {scalar_t__ bq_cfgcnt; scalar_t__ eq_cfgcnt; scalar_t__ digmic_right_mode; scalar_t__ digmic_left_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  M98095_087_CFG_MIC ; 
 int /*<<< orphan*/  M98095_DIGMIC_L ; 
 int /*<<< orphan*/  M98095_DIGMIC_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 struct max98095_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct max98095_priv *max98095 = FUNC3(component);
	struct max98095_pdata *pdata = max98095->pdata;
	u8 regval = 0;

	if (!pdata) {
		FUNC0(component->dev, "No platform data\n");
		return;
	}

	/* Configure mic for analog/digital mic mode */
	if (pdata->digmic_left_mode)
		regval |= M98095_DIGMIC_L;

	if (pdata->digmic_right_mode)
		regval |= M98095_DIGMIC_R;

	FUNC4(component, M98095_087_CFG_MIC, regval);

	/* Configure equalizers */
	if (pdata->eq_cfgcnt)
		FUNC2(component);

	/* Configure bi-quad filters */
	if (pdata->bq_cfgcnt)
		FUNC1(component);
}