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
struct snd_usb_caiaqdev {int /*<<< orphan*/ * input_dev; int /*<<< orphan*/ * ep4_in_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_usb_caiaqdev *cdev)
{
	if (!cdev || !cdev->input_dev)
		return;

	FUNC2(cdev->ep4_in_urb);
	FUNC1(cdev->ep4_in_urb);
	cdev->ep4_in_urb = NULL;

	FUNC0(cdev->input_dev);
	cdev->input_dev = NULL;
}