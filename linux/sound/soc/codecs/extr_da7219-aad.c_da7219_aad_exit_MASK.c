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
struct snd_soc_component {int dummy; } ;
struct da7219_priv {int /*<<< orphan*/  regmap; struct da7219_aad_priv* aad; } ;
struct da7219_aad_priv {int /*<<< orphan*/  hptest_work; int /*<<< orphan*/  btn_det_work; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int DA7219_AAD_IRQ_REG_MAX ; 
 int /*<<< orphan*/  DA7219_ACCDET_IRQ_MASK_A ; 
 int /*<<< orphan*/  DA7219_BYTE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct da7219_aad_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct da7219_priv* FUNC4 (struct snd_soc_component*) ; 

void FUNC5(struct snd_soc_component *component)
{
	struct da7219_priv *da7219 = FUNC4(component);
	struct da7219_aad_priv *da7219_aad = da7219->aad;
	u8 mask[DA7219_AAD_IRQ_REG_MAX];

	/* Mask off AAD IRQs */
	FUNC2(mask, DA7219_BYTE_MASK, DA7219_AAD_IRQ_REG_MAX);
	FUNC3(da7219->regmap, DA7219_ACCDET_IRQ_MASK_A,
			  mask, DA7219_AAD_IRQ_REG_MAX);

	FUNC1(da7219_aad->irq, da7219_aad);

	FUNC0(&da7219_aad->btn_det_work);
	FUNC0(&da7219_aad->hptest_work);
}