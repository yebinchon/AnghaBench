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
struct hdac_device {scalar_t__ caps_overwriting; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  AC_VERB_GET_CONFIG_DEFAULT 133 
#define  AC_VERB_GET_CONNECT_LIST 132 
#define  AC_VERB_GET_CONV 131 
#define  AC_VERB_GET_CVT_CHAN_COUNT 130 
#define  AC_VERB_GET_SUBSYSTEM_ID 129 
#define  AC_VERB_PARAMETERS 128 
 struct hdac_device* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (struct device*,unsigned int) ; 

__attribute__((used)) static bool FUNC3(struct device *dev, unsigned int reg)
{
	struct hdac_device *codec = FUNC0(dev);
	unsigned int verb = FUNC1(reg);

	if (codec->caps_overwriting)
		return true;

	switch (verb) {
	case AC_VERB_PARAMETERS:
	case AC_VERB_GET_CONNECT_LIST:
	case AC_VERB_GET_SUBSYSTEM_ID:
		return true;
	/* below are basically writable, but disabled for reducing unnecessary
	 * writes at sync
	 */
	case AC_VERB_GET_CONFIG_DEFAULT: /* usually just read */
	case AC_VERB_GET_CONV: /* managed in PCM code */
	case AC_VERB_GET_CVT_CHAN_COUNT: /* managed in HDMI CA code */
		return true;
	}

	return FUNC2(dev, reg);
}