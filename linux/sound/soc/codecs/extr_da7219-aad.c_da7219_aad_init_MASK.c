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
struct da7219_priv {int /*<<< orphan*/  regmap; TYPE_1__* pdata; struct da7219_aad_priv* aad; } ;
struct da7219_aad_priv {int /*<<< orphan*/  irq; int /*<<< orphan*/  hptest_work; int /*<<< orphan*/  btn_det_work; struct snd_soc_component* component; } ;
struct TYPE_2__ {scalar_t__ aad_pdata; } ;

/* Variables and functions */
 int DA7219_AAD_IRQ_REG_MAX ; 
 int /*<<< orphan*/  DA7219_ACCDET_CONFIG_1 ; 
 int /*<<< orphan*/  DA7219_ACCDET_IRQ_MASK_A ; 
 int /*<<< orphan*/  DA7219_BUTTON_CONFIG_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  da7219_aad_btn_det_work ; 
 scalar_t__ FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  da7219_aad_hptest_work ; 
 int /*<<< orphan*/  da7219_aad_irq_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct da7219_aad_priv* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da7219_aad_priv*) ; 
 struct da7219_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct snd_soc_component *component)
{
	struct da7219_priv *da7219 = FUNC8(component);
	struct da7219_aad_priv *da7219_aad;
	u8 mask[DA7219_AAD_IRQ_REG_MAX];
	int ret;

	da7219_aad = FUNC4(component->dev, sizeof(*da7219_aad), GFP_KERNEL);
	if (!da7219_aad)
		return -ENOMEM;

	da7219->aad = da7219_aad;
	da7219_aad->component = component;

	/* Handle any DT/ACPI/platform data */
	if (da7219->pdata && !da7219->pdata->aad_pdata)
		da7219->pdata->aad_pdata = FUNC1(component);

	FUNC2(component);

	/* Disable button detection */
	FUNC9(component, DA7219_ACCDET_CONFIG_1,
			    DA7219_BUTTON_CONFIG_MASK, 0);

	FUNC0(&da7219_aad->btn_det_work, da7219_aad_btn_det_work);
	FUNC0(&da7219_aad->hptest_work, da7219_aad_hptest_work);

	ret = FUNC7(da7219_aad->irq, NULL,
				   da7219_aad_irq_thread,
				   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				   "da7219-aad", da7219_aad);
	if (ret) {
		FUNC3(component->dev, "Failed to request IRQ: %d\n", ret);
		return ret;
	}

	/* Unmask AAD IRQs */
	FUNC5(mask, 0, DA7219_AAD_IRQ_REG_MAX);
	FUNC6(da7219->regmap, DA7219_ACCDET_IRQ_MASK_A,
			  &mask, DA7219_AAD_IRQ_REG_MAX);

	return 0;
}