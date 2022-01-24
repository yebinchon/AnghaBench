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
struct ssp_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PXA25x_SSP ; 
 int /*<<< orphan*/  SSCR0 ; 
 int FUNC0 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ssp_device *ssp, u32 div)
{
	u32 sscr0 = FUNC0(ssp, SSCR0);

	if (ssp->type == PXA25x_SSP) {
		sscr0 &= ~0x0000ff00;
		sscr0 |= ((div - 2)/2) << 8; /* 2..512 */
	} else {
		sscr0 &= ~0x000fff00;
		sscr0 |= (div - 1) << 8;     /* 1..4096 */
	}
	FUNC1(ssp, SSCR0, sscr0);
}