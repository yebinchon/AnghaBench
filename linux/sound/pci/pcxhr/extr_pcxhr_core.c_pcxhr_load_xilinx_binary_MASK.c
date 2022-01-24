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
struct pcxhr_mgr {TYPE_1__* pci; } ;
struct firmware {unsigned char* data; unsigned int size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int PCXHR_CHIPSC_DATA_CLK ; 
 unsigned int PCXHR_CHIPSC_DATA_IN ; 
 unsigned int PCXHR_CHIPSC_GPI_USERI ; 
 unsigned int PCXHR_CHIPSC_RESET_XILINX ; 
 unsigned int FUNC0 (struct pcxhr_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_mgr*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PCXHR_PLX_CHIPSC ; 
 int /*<<< orphan*/  PCXHR_WAIT_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct pcxhr_mgr *mgr,
			     const struct firmware *xilinx, int second)
{
	unsigned int i;
	unsigned int chipsc;
	unsigned char data;
	unsigned char mask;
	const unsigned char *image;

	/* test first xilinx */
	chipsc = FUNC0(mgr, PCXHR_PLX_CHIPSC);
	/* REV01 cards do not support the PCXHR_CHIPSC_GPI_USERI bit anymore */
	/* this bit will always be 1;
	 * no possibility to test presence of first xilinx
	 */
	if(second) {
		if ((chipsc & PCXHR_CHIPSC_GPI_USERI) == 0) {
			FUNC3(&mgr->pci->dev, "error loading first xilinx\n");
			return -EINVAL;
		}
		/* activate second xilinx */
		chipsc |= PCXHR_CHIPSC_RESET_XILINX;
		FUNC1(mgr, PCXHR_PLX_CHIPSC, chipsc);
		FUNC4( PCXHR_WAIT_DEFAULT ); /* wait 2 msec */
	}
	image = xilinx->data;
	for (i = 0; i < xilinx->size; i++, image++) {
		data = *image;
		mask = 0x80;
		while (mask) {
			chipsc &= ~(PCXHR_CHIPSC_DATA_CLK |
				    PCXHR_CHIPSC_DATA_IN);
			if (data & mask)
				chipsc |= PCXHR_CHIPSC_DATA_IN;
			FUNC1(mgr, PCXHR_PLX_CHIPSC, chipsc);
			chipsc |= PCXHR_CHIPSC_DATA_CLK;
			FUNC1(mgr, PCXHR_PLX_CHIPSC, chipsc);
			mask >>= 1;
		}
		/* don't take too much time in this loop... */
		FUNC2();
	}
	chipsc &= ~(PCXHR_CHIPSC_DATA_CLK | PCXHR_CHIPSC_DATA_IN);
	FUNC1(mgr, PCXHR_PLX_CHIPSC, chipsc);
	/* wait 2 msec (time to boot the xilinx before any access) */
	FUNC4( PCXHR_WAIT_DEFAULT );
	return 0;
}