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
struct usb_mixer_interface {int /*<<< orphan*/  private_suspend; int /*<<< orphan*/  private_free; struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_mixer_data {int /*<<< orphan*/  mux; struct usb_mixer_interface* mixer; scalar_t__ scarlett2_seq; int /*<<< orphan*/  num_mux_srcs; struct scarlett2_device_info const* info; int /*<<< orphan*/  work; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  usb_mutex; } ;
struct scarlett2_device_info {int /*<<< orphan*/  ports; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCARLETT2_USB_INIT_SEQ ; 
 struct scarlett2_mixer_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scarlett2_config_save_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scarlett2_private_free ; 
 int /*<<< orphan*/  scarlett2_private_suspend ; 
 int FUNC5 (struct usb_mixer_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_mixer_interface *mixer,
				  const struct scarlett2_device_info *info)
{
	struct scarlett2_mixer_data *private =
		FUNC1(sizeof(struct scarlett2_mixer_data), GFP_KERNEL);

	if (!private)
		return -ENOMEM;

	FUNC2(&private->usb_mutex);
	FUNC2(&private->data_mutex);
	FUNC0(&private->work, scarlett2_config_save_work);
	private->info = info;
	private->num_mux_srcs = FUNC3(info->ports);
	private->scarlett2_seq = 0;
	private->mixer = mixer;
	mixer->private_data = private;
	mixer->private_free = scarlett2_private_free;
	mixer->private_suspend = scarlett2_private_suspend;

	/* Setup default routing */
	FUNC4(private->mux, info->ports);

	/* Initialise the sequence number used for the proprietary commands */
	return FUNC5(mixer, SCARLETT2_USB_INIT_SEQ, NULL, 0, NULL, 0);
}