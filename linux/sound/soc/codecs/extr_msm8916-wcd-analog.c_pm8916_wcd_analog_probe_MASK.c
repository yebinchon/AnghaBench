#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {TYPE_3__* dev; } ;
struct pm8916_wcd_analog_priv {struct snd_soc_component* component; void* codec_version; void* pmic_rev; TYPE_1__* supplies; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CDC_A_PERPH_RESET_CTL4 ; 
 int /*<<< orphan*/  CDC_D_CDC_RST_CTL ; 
 int /*<<< orphan*/  CDC_D_PERPH_RESET_CTL4 ; 
 int /*<<< orphan*/  CDC_D_PERPH_SUBTYPE ; 
 int /*<<< orphan*/  CDC_D_REVISION1 ; 
 int /*<<< orphan*/  RST_CTL_DIG_SW_RST_N_MASK ; 
 int /*<<< orphan*/  RST_CTL_DIG_SW_RST_N_REMOVE_RESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 struct pm8916_wcd_analog_priv* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8916_wcd_analog_priv*) ; 
 int FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,struct pm8916_wcd_analog_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* wcd_reg_defaults_2_0 ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component)
{
	struct pm8916_wcd_analog_priv *priv = FUNC2(component->dev);
	int err, reg;

	err = FUNC6(FUNC0(priv->supplies), priv->supplies);
	if (err != 0) {
		FUNC1(component->dev, "failed to enable regulators (%d)\n", err);
		return err;
	}

	FUNC7(component,
				  FUNC3(component->dev->parent, NULL));
	FUNC9(component, priv);
	priv->pmic_rev = FUNC8(component, CDC_D_REVISION1);
	priv->codec_version = FUNC8(component, CDC_D_PERPH_SUBTYPE);

	FUNC4(component->dev, "PMIC REV: %d\t CODEC Version: %d\n",
		 priv->pmic_rev, priv->codec_version);

	FUNC11(component, CDC_D_PERPH_RESET_CTL4, 0x01);
	FUNC11(component, CDC_A_PERPH_RESET_CTL4, 0x01);

	for (reg = 0; reg < FUNC0(wcd_reg_defaults_2_0); reg++)
		FUNC11(component, wcd_reg_defaults_2_0[reg].reg,
			      wcd_reg_defaults_2_0[reg].def);

	priv->component = component;

	FUNC10(component, CDC_D_CDC_RST_CTL,
			    RST_CTL_DIG_SW_RST_N_MASK,
			    RST_CTL_DIG_SW_RST_N_REMOVE_RESET);

	FUNC5(priv);

	return 0;
}