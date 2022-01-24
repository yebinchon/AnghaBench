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
struct max98088_priv {unsigned int sysclk; scalar_t__ mic2pre; scalar_t__ mic1pre; scalar_t__ digmic; scalar_t__ ex_mode; scalar_t__ inb_state; scalar_t__ ina_state; struct max98088_cdata* dai; scalar_t__ eq_textcnt; int /*<<< orphan*/  regmap; } ;
struct max98088_cdata {unsigned int rate; unsigned int fmt; scalar_t__ eq_sel; } ;

/* Variables and functions */
 int M98088_DAI1L_TO_DACL ; 
 int M98088_DAI1R_TO_DACR ; 
 int M98088_DAI2L_TO_DACL ; 
 int M98088_DAI2R_TO_DACR ; 
 int M98088_PWRSV ; 
 int /*<<< orphan*/  M98088_REG_0F_IRQ_ENABLE ; 
 int /*<<< orphan*/  M98088_REG_16_DAI1_IOCFG ; 
 int /*<<< orphan*/  M98088_REG_1E_DAI2_IOCFG ; 
 int /*<<< orphan*/  M98088_REG_22_MIX_DAC ; 
 int /*<<< orphan*/  M98088_REG_4E_BIAS_CNTL ; 
 int /*<<< orphan*/  M98088_REG_50_DAC_BIAS2 ; 
 int /*<<< orphan*/  M98088_REG_51_PWR_SYS ; 
 int /*<<< orphan*/  M98088_REG_FF_REV_ID ; 
 int M98088_S1NORMAL ; 
 int M98088_S2NORMAL ; 
 int M98088_SDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct max98088_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
       struct max98088_priv *max98088 = FUNC4(component);
       struct max98088_cdata *cdata;
       int ret = 0;

       FUNC3(max98088->regmap);

       /* initialize private data */

       max98088->sysclk = (unsigned)-1;
       max98088->eq_textcnt = 0;

       cdata = &max98088->dai[0];
       cdata->rate = (unsigned)-1;
       cdata->fmt  = (unsigned)-1;
       cdata->eq_sel = 0;

       cdata = &max98088->dai[1];
       cdata->rate = (unsigned)-1;
       cdata->fmt  = (unsigned)-1;
       cdata->eq_sel = 0;

       max98088->ina_state = 0;
       max98088->inb_state = 0;
       max98088->ex_mode = 0;
       max98088->digmic = 0;
       max98088->mic1pre = 0;
       max98088->mic2pre = 0;

       ret = FUNC5(component, M98088_REG_FF_REV_ID);
       if (ret < 0) {
               FUNC0(component->dev, "Failed to read device revision: %d\n",
                       ret);
               goto err_access;
       }
       FUNC1(component->dev, "revision %c\n", ret - 0x40 + 'A');

       FUNC6(component, M98088_REG_51_PWR_SYS, M98088_PWRSV);

       FUNC6(component, M98088_REG_0F_IRQ_ENABLE, 0x00);

       FUNC6(component, M98088_REG_22_MIX_DAC,
               M98088_DAI1L_TO_DACL|M98088_DAI2L_TO_DACL|
               M98088_DAI1R_TO_DACR|M98088_DAI2R_TO_DACR);

       FUNC6(component, M98088_REG_4E_BIAS_CNTL, 0xF0);
       FUNC6(component, M98088_REG_50_DAC_BIAS2, 0x0F);

       FUNC6(component, M98088_REG_16_DAI1_IOCFG,
               M98088_S1NORMAL|M98088_SDATA);

       FUNC6(component, M98088_REG_1E_DAI2_IOCFG,
               M98088_S2NORMAL|M98088_SDATA);

       FUNC2(component);

err_access:
       return ret;
}