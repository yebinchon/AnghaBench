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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98088_priv {int /*<<< orphan*/ * eq_texts; int /*<<< orphan*/  eq_textcnt; struct max98088_cdata* dai; struct max98088_pdata* pdata; } ;
struct max98088_pdata {int eq_cfgcnt; struct max98088_eq_cfg* eq_cfg; } ;
struct max98088_eq_cfg {int /*<<< orphan*/  band5; int /*<<< orphan*/  band4; int /*<<< orphan*/  band3; int /*<<< orphan*/  band2; int /*<<< orphan*/  band1; scalar_t__ rate; int /*<<< orphan*/  name; } ;
struct max98088_cdata {int rate; int eq_sel; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  M98088_EQ2EN ; 
 int /*<<< orphan*/  M98088_REG_49_CFG_LEVEL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int,int,int /*<<< orphan*/ ) ; 
 struct max98088_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component)
{
       struct max98088_priv *max98088 = FUNC3(component);
       struct max98088_pdata *pdata = max98088->pdata;
       struct max98088_eq_cfg *coef_set;
       int best, best_val, save, i, sel, fs;
       struct max98088_cdata *cdata;

       cdata = &max98088->dai[1];

       if (!pdata || !max98088->eq_textcnt)
               return;

       /* Find the selected configuration with nearest sample rate */
       fs = cdata->rate;

       sel = cdata->eq_sel;
       best = 0;
       best_val = INT_MAX;
       for (i = 0; i < pdata->eq_cfgcnt; i++) {
               if (FUNC6(pdata->eq_cfg[i].name, max98088->eq_texts[sel]) == 0 &&
                   FUNC0(pdata->eq_cfg[i].rate - fs) < best_val) {
                       best = i;
                       best_val = FUNC0(pdata->eq_cfg[i].rate - fs);
               }
       }

       FUNC1(component->dev, "Selected %s/%dHz for %dHz sample rate\n",
               pdata->eq_cfg[best].name,
               pdata->eq_cfg[best].rate, fs);

       /* Disable EQ while configuring, and save current on/off state */
       save = FUNC4(component, M98088_REG_49_CFG_LEVEL);
       FUNC5(component, M98088_REG_49_CFG_LEVEL, M98088_EQ2EN, 0);

       coef_set = &pdata->eq_cfg[sel];

       FUNC2(component, 1, 0, coef_set->band1);
       FUNC2(component, 1, 1, coef_set->band2);
       FUNC2(component, 1, 2, coef_set->band3);
       FUNC2(component, 1, 3, coef_set->band4);
       FUNC2(component, 1, 4, coef_set->band5);

       /* Restore the original on/off state */
       FUNC5(component, M98088_REG_49_CFG_LEVEL, M98088_EQ2EN,
               save);
}