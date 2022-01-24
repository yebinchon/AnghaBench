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
struct atiixp {int dummy; } ;

/* Variables and functions */
 int ATI_REG_DMA_FIFO_USED ; 
 int /*<<< orphan*/  SPDF_DMA_DT_SIZE ; 
 int FUNC0 (struct atiixp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct atiixp *chip)
{
	int timeout;

	/* DMA off, transfer on */
	FUNC1(chip, 0);
	FUNC2(chip, 1);
	
	timeout = 100;
	do {
		if (! (FUNC0(chip, SPDF_DMA_DT_SIZE) & ATI_REG_DMA_FIFO_USED))
			break;
		FUNC3(1);
	} while (timeout-- > 0);

	FUNC2(chip, 0);
}