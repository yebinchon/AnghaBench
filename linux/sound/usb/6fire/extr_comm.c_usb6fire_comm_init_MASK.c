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
struct urb {int transfer_buffer_length; int interval; struct comm_runtime* context; int /*<<< orphan*/  complete; TYPE_1__* dev; int /*<<< orphan*/  pipe; struct comm_runtime* transfer_buffer; } ;
struct sfire_chip {struct comm_runtime* comm; TYPE_1__* dev; } ;
struct comm_runtime {int serial; struct comm_runtime* receiver_buffer; int /*<<< orphan*/  write16; int /*<<< orphan*/  write8; int /*<<< orphan*/  init_urb; struct sfire_chip* chip; struct urb receiver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_EP ; 
 int COMM_RECEIVER_BUFSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_runtime*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb6fire_comm_init_urb ; 
 int /*<<< orphan*/  usb6fire_comm_receiver_handler ; 
 int /*<<< orphan*/  usb6fire_comm_write16 ; 
 int /*<<< orphan*/  usb6fire_comm_write8 ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC6(struct sfire_chip *chip)
{
	struct comm_runtime *rt = FUNC2(sizeof(struct comm_runtime),
			GFP_KERNEL);
	struct urb *urb;
	int ret;

	if (!rt)
		return -ENOMEM;

	rt->receiver_buffer = FUNC2(COMM_RECEIVER_BUFSIZE, GFP_KERNEL);
	if (!rt->receiver_buffer) {
		FUNC1(rt);
		return -ENOMEM;
	}

	urb = &rt->receiver;
	rt->serial = 1;
	rt->chip = chip;
	FUNC3(urb);
	rt->init_urb = usb6fire_comm_init_urb;
	rt->write8 = usb6fire_comm_write8;
	rt->write16 = usb6fire_comm_write16;

	/* submit an urb that receives communication data from device */
	urb->transfer_buffer = rt->receiver_buffer;
	urb->transfer_buffer_length = COMM_RECEIVER_BUFSIZE;
	urb->pipe = FUNC4(chip->dev, COMM_EP);
	urb->dev = chip->dev;
	urb->complete = usb6fire_comm_receiver_handler;
	urb->context = rt;
	urb->interval = 1;
	ret = FUNC5(urb, GFP_KERNEL);
	if (ret < 0) {
		FUNC1(rt->receiver_buffer);
		FUNC1(rt);
		FUNC0(&chip->dev->dev, "cannot create comm data receiver.");
		return ret;
	}
	chip->comm = rt;
	return 0;
}