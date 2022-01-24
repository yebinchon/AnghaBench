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
struct mchp_i2s_mcc_dev {int tx_rdy; int rx_rdy; int /*<<< orphan*/  regmap; int /*<<< orphan*/  wq_rxrdy; int /*<<< orphan*/  channels; int /*<<< orphan*/  wq_txrdy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MCHP_I2SMCC_IDRA ; 
 int /*<<< orphan*/  MCHP_I2SMCC_IMRA ; 
 int /*<<< orphan*/  MCHP_I2SMCC_IMRB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCHP_I2SMCC_ISRA ; 
 int /*<<< orphan*/  MCHP_I2SMCC_ISRB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct mchp_i2s_mcc_dev *dev = dev_id;
	u32 sra, imra, srb, imrb, pendinga, pendingb, idra = 0;
	irqreturn_t ret = IRQ_NONE;

	FUNC2(dev->regmap, MCHP_I2SMCC_IMRA, &imra);
	FUNC2(dev->regmap, MCHP_I2SMCC_ISRA, &sra);
	pendinga = imra & sra;

	FUNC2(dev->regmap, MCHP_I2SMCC_IMRB, &imrb);
	FUNC2(dev->regmap, MCHP_I2SMCC_ISRB, &srb);
	pendingb = imrb & srb;

	if (!pendinga && !pendingb)
		return IRQ_NONE;

	/*
	 * Tx/Rx ready interrupts are enabled when stopping only, to assure
	 * availability and to disable clocks if necessary
	 */
	idra |= pendinga & (FUNC1(dev->channels) |
			    FUNC0(dev->channels));
	if (idra)
		ret = IRQ_HANDLED;

	if ((imra & FUNC1(dev->channels)) &&
	    (imra & FUNC1(dev->channels)) ==
	    (idra & FUNC1(dev->channels))) {
		dev->tx_rdy = 1;
		FUNC4(&dev->wq_txrdy);
	}
	if ((imra & FUNC0(dev->channels)) &&
	    (imra & FUNC0(dev->channels)) ==
	    (idra & FUNC0(dev->channels))) {
		dev->rx_rdy = 1;
		FUNC4(&dev->wq_rxrdy);
	}
	FUNC3(dev->regmap, MCHP_I2SMCC_IDRA, idra);

	return ret;
}