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
struct ux500_msp {scalar_t__ registers; } ;

/* Variables and functions */
 int LOOPBACK_MASK ; 
 unsigned int MSP_DIR_TX ; 
 scalar_t__ MSP_GCR ; 
 int RX_ENABLE ; 
 int TX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ux500_msp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ux500_msp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ux500_msp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ux500_msp*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ux500_msp *msp, unsigned int dir)
{
	u32 reg_val_GCR;
	int status = 0;
	unsigned int disable_tx, disable_rx;

	reg_val_GCR = FUNC4(msp->registers + MSP_GCR);
	disable_tx = dir & MSP_DIR_TX;
	disable_rx = dir & MSP_DIR_TX;
	if (disable_tx && disable_rx) {
		reg_val_GCR = FUNC4(msp->registers + MSP_GCR);
		FUNC5(reg_val_GCR | LOOPBACK_MASK,
				msp->registers + MSP_GCR);

		/* Flush TX-FIFO */
		FUNC3(msp);

		/* Disable TX-channel */
		FUNC5((FUNC4(msp->registers + MSP_GCR) &
			       (~TX_ENABLE)), msp->registers + MSP_GCR);

		/* Flush RX-FIFO */
		FUNC2(msp);

		/* Disable Loopback and Receive channel */
		FUNC5((FUNC4(msp->registers + MSP_GCR) &
				(~(RX_ENABLE | LOOPBACK_MASK))),
				msp->registers + MSP_GCR);

		FUNC1(msp);
		FUNC0(msp);
	} else if (disable_tx)
		FUNC1(msp);
	else if (disable_rx)
		FUNC0(msp);

	return status;
}