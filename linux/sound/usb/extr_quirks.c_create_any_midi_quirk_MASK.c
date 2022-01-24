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
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {int dummy; } ;
struct snd_usb_audio {int /*<<< orphan*/  midi_list; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct usb_interface*,int /*<<< orphan*/ *,struct snd_usb_audio_quirk const*) ; 

__attribute__((used)) static int FUNC1(struct snd_usb_audio *chip,
				 struct usb_interface *intf,
				 struct usb_driver *driver,
				 const struct snd_usb_audio_quirk *quirk)
{
	return FUNC0(chip->card, intf, &chip->midi_list, quirk);
}