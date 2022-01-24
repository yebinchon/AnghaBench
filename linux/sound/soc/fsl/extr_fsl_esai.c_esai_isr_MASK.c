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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_esai {int /*<<< orphan*/  task; scalar_t__ reset_at_xrun; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ESAI_ESR_RDE_MASK ; 
 int ESAI_ESR_RD_MASK ; 
 int ESAI_ESR_RED_MASK ; 
 int ESAI_ESR_RFF_MASK ; 
 int ESAI_ESR_RLS_MASK ; 
 int ESAI_ESR_TDE_MASK ; 
 int ESAI_ESR_TD_MASK ; 
 int ESAI_ESR_TED_MASK ; 
 int ESAI_ESR_TFE_MASK ; 
 int ESAI_ESR_TINIT_MASK ; 
 int ESAI_ESR_TLS_MASK ; 
 int ESAI_SAISR_ROE ; 
 int ESAI_SAISR_TUE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_ESAI_ESR ; 
 int /*<<< orphan*/  REG_ESAI_SAISR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *devid)
{
	struct fsl_esai *esai_priv = (struct fsl_esai *)devid;
	struct platform_device *pdev = esai_priv->pdev;
	u32 esr;
	u32 saisr;

	FUNC2(esai_priv->regmap, REG_ESAI_ESR, &esr);
	FUNC2(esai_priv->regmap, REG_ESAI_SAISR, &saisr);

	if ((saisr & (ESAI_SAISR_TUE | ESAI_SAISR_ROE)) &&
	    esai_priv->reset_at_xrun) {
		FUNC0(&pdev->dev, "reset module for xrun\n");
		FUNC3(&esai_priv->task);
	}

	if (esr & ESAI_ESR_TINIT_MASK)
		FUNC0(&pdev->dev, "isr: Transmission Initialized\n");

	if (esr & ESAI_ESR_RFF_MASK)
		FUNC1(&pdev->dev, "isr: Receiving overrun\n");

	if (esr & ESAI_ESR_TFE_MASK)
		FUNC1(&pdev->dev, "isr: Transmission underrun\n");

	if (esr & ESAI_ESR_TLS_MASK)
		FUNC0(&pdev->dev, "isr: Just transmitted the last slot\n");

	if (esr & ESAI_ESR_TDE_MASK)
		FUNC0(&pdev->dev, "isr: Transmission data exception\n");

	if (esr & ESAI_ESR_TED_MASK)
		FUNC0(&pdev->dev, "isr: Transmitting even slots\n");

	if (esr & ESAI_ESR_TD_MASK)
		FUNC0(&pdev->dev, "isr: Transmitting data\n");

	if (esr & ESAI_ESR_RLS_MASK)
		FUNC0(&pdev->dev, "isr: Just received the last slot\n");

	if (esr & ESAI_ESR_RDE_MASK)
		FUNC0(&pdev->dev, "isr: Receiving data exception\n");

	if (esr & ESAI_ESR_RED_MASK)
		FUNC0(&pdev->dev, "isr: Receiving even slots\n");

	if (esr & ESAI_ESR_RD_MASK)
		FUNC0(&pdev->dev, "isr: Receiving data\n");

	return IRQ_HANDLED;
}