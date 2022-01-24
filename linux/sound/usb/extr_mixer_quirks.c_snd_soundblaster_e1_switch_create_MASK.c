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
struct usb_mixer_interface {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usb_mixer_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_soundblaster_e1_input_switch ; 
 int /*<<< orphan*/  snd_soundblaster_e1_switch_resume ; 

__attribute__((used)) static int FUNC1(struct usb_mixer_interface *mixer)
{
	return FUNC0(mixer, 0,
					  snd_soundblaster_e1_switch_resume,
					  &snd_soundblaster_e1_input_switch,
					  NULL);
}