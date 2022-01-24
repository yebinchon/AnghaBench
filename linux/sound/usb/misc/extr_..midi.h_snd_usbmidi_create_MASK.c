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
struct snd_usb_audio_quirk {int dummy; } ;
struct snd_card {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_card*,struct usb_interface*,struct list_head*,struct snd_usb_audio_quirk const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct snd_card *card,
		       struct usb_interface *iface,
		       struct list_head *midi_list,
		       const struct snd_usb_audio_quirk *quirk)
{
	return FUNC0(card, iface, midi_list, quirk, 0);
}