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
struct usb_mixer_elem_info {struct usb_mixer_elem_info* private_data; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_mixer_elem_info*) ; 

__attribute__((used)) static void FUNC1(struct snd_kcontrol *kctl)
{
	struct usb_mixer_elem_info *elem = kctl->private_data;

	if (elem)
		FUNC0(elem->private_data);
	FUNC0(elem);
	kctl->private_data = NULL;
}