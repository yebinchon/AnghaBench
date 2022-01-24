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
struct urb {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct urb *urb, gfp_t flags)
{
	int err = FUNC1(urb, flags);
	if (err < 0 && err != -ENODEV)
		FUNC0(&urb->dev->dev, "usb_submit_urb: %d\n", err);
	return err;
}