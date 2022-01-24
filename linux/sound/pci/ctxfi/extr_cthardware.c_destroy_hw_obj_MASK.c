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
struct hw {TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct hw*) ; 
 int FUNC1 (struct hw*) ; 

int FUNC2(struct hw *hw)
{
	int err;

	switch (hw->pci->device) {
	case 0x0005:	/* 20k1 device */
		err = FUNC0(hw);
		break;
	case 0x000B:	/* 20k2 device */
		err = FUNC1(hw);
		break;
	default:
		err = -ENODEV;
		break;
	}

	return err;
}