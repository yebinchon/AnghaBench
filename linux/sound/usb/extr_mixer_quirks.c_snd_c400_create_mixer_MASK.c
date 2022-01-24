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
 int FUNC0 (struct usb_mixer_interface*) ; 
 int FUNC1 (struct usb_mixer_interface*) ; 
 int FUNC2 (struct usb_mixer_interface*) ; 
 int FUNC3 (struct usb_mixer_interface*) ; 
 int FUNC4 (struct usb_mixer_interface*) ; 
 int FUNC5 (struct usb_mixer_interface*) ; 
 int FUNC6 (struct usb_mixer_interface*,int,int) ; 

__attribute__((used)) static int FUNC7(struct usb_mixer_interface *mixer)
{
	int err;

	err = FUNC5(mixer);
	if (err < 0)
		return err;

	err = FUNC3(mixer);
	if (err < 0)
		return err;

	err = FUNC2(mixer);
	if (err < 0)
		return err;

	err = FUNC6(mixer, 2, 0x43);
	if (err < 0)
		return err;

	err = FUNC4(mixer);
	if (err < 0)
		return err;

	err = FUNC0(mixer);
	if (err < 0)
		return err;

	err = FUNC1(mixer);
	if (err < 0)
		return err;

	return 0;
}