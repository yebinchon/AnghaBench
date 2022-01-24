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
struct fsl_spdif_priv {struct platform_device* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INT_BIT_ERR ; 
 int INT_CNEW ; 
 int INT_DPLL_LOCKED ; 
 int INT_LOSS_LOCK ; 
 int INT_QRX_FUL ; 
 int INT_QRX_OV ; 
 int INT_RXFIFO_FUL ; 
 int INT_RXFIFO_RESYNC ; 
 int INT_RXFIFO_UNOV ; 
 int INT_SYM_ERR ; 
 int INT_TXFIFO_RESYNC ; 
 int INT_TXFIFO_UNOV ; 
 int INT_TX_EM ; 
 int INT_UQ_ERR ; 
 int INT_UQ_SYNC ; 
 int INT_URX_FUL ; 
 int INT_URX_OV ; 
 int INT_VAL_NOGOOD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct fsl_spdif_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_spdif_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_spdif_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_spdif_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_spdif_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_spdif_priv*,char) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *devid)
{
	struct fsl_spdif_priv *spdif_priv = (struct fsl_spdif_priv *)devid;
	struct platform_device *pdev = spdif_priv->pdev;
	u32 sis;

	sis = FUNC1(spdif_priv);

	if (sis & INT_DPLL_LOCKED)
		FUNC2(spdif_priv);

	if (sis & INT_TXFIFO_UNOV)
		FUNC0(&pdev->dev, "isr: Tx FIFO under/overrun\n");

	if (sis & INT_TXFIFO_RESYNC)
		FUNC0(&pdev->dev, "isr: Tx FIFO resync\n");

	if (sis & INT_CNEW)
		FUNC0(&pdev->dev, "isr: cstatus new\n");

	if (sis & INT_VAL_NOGOOD)
		FUNC0(&pdev->dev, "isr: validity flag no good\n");

	if (sis & INT_SYM_ERR)
		FUNC3(spdif_priv);

	if (sis & INT_BIT_ERR)
		FUNC0(&pdev->dev, "isr: receiver found parity bit error\n");

	if (sis & INT_URX_FUL)
		FUNC6(spdif_priv, 'U');

	if (sis & INT_URX_OV)
		FUNC0(&pdev->dev, "isr: U Channel receive register overrun\n");

	if (sis & INT_QRX_FUL)
		FUNC6(spdif_priv, 'Q');

	if (sis & INT_QRX_OV)
		FUNC0(&pdev->dev, "isr: Q Channel receive register overrun\n");

	if (sis & INT_UQ_SYNC)
		FUNC5(spdif_priv);

	if (sis & INT_UQ_ERR)
		FUNC4(spdif_priv);

	if (sis & INT_RXFIFO_UNOV)
		FUNC0(&pdev->dev, "isr: Rx FIFO under/overrun\n");

	if (sis & INT_RXFIFO_RESYNC)
		FUNC0(&pdev->dev, "isr: Rx FIFO resync\n");

	if (sis & INT_LOSS_LOCK)
		FUNC2(spdif_priv);

	/* FIXME: Write Tx FIFO to clear TxEm */
	if (sis & INT_TX_EM)
		FUNC0(&pdev->dev, "isr: Tx FIFO empty\n");

	/* FIXME: Read Rx FIFO to clear RxFIFOFul */
	if (sis & INT_RXFIFO_FUL)
		FUNC0(&pdev->dev, "isr: Rx FIFO full\n");

	return IRQ_HANDLED;
}