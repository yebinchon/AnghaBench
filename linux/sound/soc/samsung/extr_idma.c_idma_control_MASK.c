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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int AHB_DMAEN ; 
 int AHB_INTENLVL0 ; 
 scalar_t__ I2SAHB ; 
#define  LPAM_DMA_START 129 
#define  LPAM_DMA_STOP 128 
 TYPE_1__ idma ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(int op)
{
	u32 val = FUNC0(idma.regs + I2SAHB);

	FUNC1(&idma.lock);

	switch (op) {
	case LPAM_DMA_START:
		val |= (AHB_INTENLVL0 | AHB_DMAEN);
		break;
	case LPAM_DMA_STOP:
		val &= ~(AHB_INTENLVL0 | AHB_DMAEN);
		break;
	default:
		FUNC2(&idma.lock);
		return;
	}

	FUNC3(val, idma.regs + I2SAHB);
	FUNC2(&idma.lock);
}