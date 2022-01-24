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
 scalar_t__ MSP_FLR ; 
 scalar_t__ MSP_GCR ; 
 scalar_t__ MSP_ITCR ; 
 int MSP_ITCR_ITEN ; 
 int MSP_ITCR_TESTFIFO ; 
 scalar_t__ MSP_TSTDR ; 
 int TX_ENABLE ; 
 int TX_FIFO_EMPTY ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ux500_msp *msp)
{
	u32 reg_val_TSTDR, reg_val_GCR, reg_val_FLR;
	u32 limit = 32;

	reg_val_GCR = FUNC0(msp->registers + MSP_GCR);
	FUNC1(reg_val_GCR | TX_ENABLE, msp->registers + MSP_GCR);
	FUNC1(MSP_ITCR_ITEN | MSP_ITCR_TESTFIFO, msp->registers + MSP_ITCR);

	reg_val_FLR = FUNC0(msp->registers + MSP_FLR);
	while (!(reg_val_FLR & TX_FIFO_EMPTY) && limit--) {
		reg_val_TSTDR = FUNC0(msp->registers + MSP_TSTDR);
		reg_val_FLR = FUNC0(msp->registers + MSP_FLR);
	}
	FUNC1(0x0, msp->registers + MSP_ITCR);
	FUNC1(reg_val_GCR, msp->registers + MSP_GCR);
}