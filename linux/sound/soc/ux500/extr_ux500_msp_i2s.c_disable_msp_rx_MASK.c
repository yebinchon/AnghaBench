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
struct ux500_msp {int /*<<< orphan*/  dir_busy; scalar_t__ registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSP_DIR_RX ; 
 scalar_t__ MSP_DMACR ; 
 scalar_t__ MSP_GCR ; 
 scalar_t__ MSP_IMSC ; 
 int RX_DMA_ENABLE ; 
 int RX_ENABLE ; 
 int RX_OVERRUN_ERROR_INT ; 
 int RX_SERVICE_INT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ux500_msp *msp)
{
	u32 reg_val_GCR, reg_val_DMACR, reg_val_IMSC;

	reg_val_GCR = FUNC0(msp->registers + MSP_GCR);
	FUNC1(reg_val_GCR & ~RX_ENABLE, msp->registers + MSP_GCR);
	reg_val_DMACR = FUNC0(msp->registers + MSP_DMACR);
	FUNC1(reg_val_DMACR & ~RX_DMA_ENABLE, msp->registers + MSP_DMACR);
	reg_val_IMSC = FUNC0(msp->registers + MSP_IMSC);
	FUNC1(reg_val_IMSC &
			~(RX_SERVICE_INT | RX_OVERRUN_ERROR_INT),
			msp->registers + MSP_IMSC);

	msp->dir_busy &= ~MSP_DIR_RX;
}