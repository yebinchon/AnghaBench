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
struct vx_core {int chip_status; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  STATUS ; 
 int VX_STATUS_MEMIRQ_MASK ; 
 int VX_STAT_XILINX_LOADED ; 
 int FUNC0 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct vx_core *chip)
{
	/* not booted yet? */
	if (! (chip->chip_status & VX_STAT_XILINX_LOADED))
		return -ENXIO;

	if (! (FUNC0(chip, STATUS) & VX_STATUS_MEMIRQ_MASK))
		return -EIO;
	
	/* ok, interrupts generated, now ack it */
	/* set ACQUIT bit up and down */
	FUNC1(chip, STATUS, 0);
	/* useless read just to spend some time and maintain
	 * the ACQUIT signal up for a while ( a bus cycle )
	 */
	FUNC0(chip, STATUS);
	/* ack */
	FUNC1(chip, STATUS, VX_STATUS_MEMIRQ_MASK);
	/* useless read just to spend some time and maintain
	 * the ACQUIT signal up for a while ( a bus cycle ) */
	FUNC0(chip, STATUS);
	/* clear */
	FUNC1(chip, STATUS, 0);

	return 0;
}