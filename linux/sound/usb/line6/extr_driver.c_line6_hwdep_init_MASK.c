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
struct TYPE_2__ {int /*<<< orphan*/  fifo; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  wait_queue; scalar_t__ active; } ;
struct usb_line6 {int /*<<< orphan*/  card; TYPE_1__ messages; int /*<<< orphan*/  process_message; } ;
struct snd_hwdep {int exclusive; struct usb_line6* private_data; int /*<<< orphan*/  ops; int /*<<< orphan*/  iface; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_HWDEP_IFACE_LINE6 ; 
 int /*<<< orphan*/  hwdep_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  line6_hwdep_push_message ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct snd_hwdep**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct usb_line6 *line6)
{
	int err;
	struct snd_hwdep *hwdep;

	/* TODO: usb_driver_claim_interface(); */
	line6->process_message = line6_hwdep_push_message;
	line6->messages.active = 0;
	FUNC1(&line6->messages.wait_queue);
	FUNC2(&line6->messages.read_lock);
	FUNC0(line6->messages.fifo);

	err = FUNC3(line6->card, "config", 0, &hwdep);
	if (err < 0)
		goto end;
	FUNC4(hwdep->name, "config");
	hwdep->iface = SNDRV_HWDEP_IFACE_LINE6;
	hwdep->ops = hwdep_ops;
	hwdep->private_data = line6;
	hwdep->exclusive = true;

end:
	return err;
}