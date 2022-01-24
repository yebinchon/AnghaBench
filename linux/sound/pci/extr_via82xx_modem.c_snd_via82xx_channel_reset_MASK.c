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
struct viadev {scalar_t__ lastpos; } ;
struct via82xx_modem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFSET_CONTROL ; 
 int /*<<< orphan*/  OFFSET_STATUS ; 
 int /*<<< orphan*/  OFFSET_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int VIA_REG_CTRL_PAUSE ; 
 int VIA_REG_CTRL_RESET ; 
 int VIA_REG_CTRL_TERMINATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct via82xx_modem *chip, struct viadev *viadev)
{
	FUNC2(VIA_REG_CTRL_PAUSE | VIA_REG_CTRL_TERMINATE | VIA_REG_CTRL_RESET,
	     FUNC0(viadev, OFFSET_CONTROL));
	FUNC1(FUNC0(viadev, OFFSET_CONTROL));
	FUNC3(50);
	/* disable interrupts */
	FUNC2(0x00, FUNC0(viadev, OFFSET_CONTROL));
	/* clear interrupts */
	FUNC2(0x03, FUNC0(viadev, OFFSET_STATUS));
	FUNC2(0x00, FUNC0(viadev, OFFSET_TYPE)); /* for via686 */
	// outl(0, VIADEV_REG(viadev, OFFSET_CURR_PTR));
	viadev->lastpos = 0;
}