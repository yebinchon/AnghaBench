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
struct usb_feature_control_info {int control; } ;

/* Variables and functions */
 int FUNC0 (struct usb_feature_control_info*) ; 
 struct usb_feature_control_info* audio_feature_info ; 

__attribute__((used)) static struct usb_feature_control_info *FUNC1(int control)
{
	int i;

	for (i = 0; i < FUNC0(audio_feature_info); ++i) {
		if (audio_feature_info[i].control == control)
			return &audio_feature_info[i];
	}
	return NULL;
}