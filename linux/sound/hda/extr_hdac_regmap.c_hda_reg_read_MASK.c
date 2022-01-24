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
struct hdac_device {int addr; } ;

/* Variables and functions */
 unsigned int AC_AMP_FAKE_MUTE ; 
 unsigned int AC_PWRST_ERROR ; 
 int AC_VERB_GET_POWER_STATE ; 
 int AC_VERB_GET_PROC_COEF ; 
 int AC_VERB_SET_AMP_GAIN_MUTE ; 
 int EAGAIN ; 
 int FUNC0 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_device*,int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (struct hdac_device*,unsigned int,unsigned int*) ; 
 int FUNC4 (struct hdac_device*,unsigned int,unsigned int*) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int FUNC6 (struct hdac_device*,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC7(void *context, unsigned int reg, unsigned int *val)
{
	struct hdac_device *codec = context;
	int verb = FUNC2(reg);
	int err;
	int pm_lock = 0;

	if (verb != AC_VERB_GET_POWER_STATE) {
		pm_lock = FUNC0(codec);
		if (pm_lock < 0)
			return -EAGAIN;
	}
	reg |= (codec->addr << 28);
	if (FUNC5(reg)) {
		err = FUNC4(codec, reg, val);
		goto out;
	}
	if (verb == AC_VERB_GET_PROC_COEF) {
		err = FUNC3(codec, reg, val);
		goto out;
	}
	if ((verb & 0x700) == AC_VERB_SET_AMP_GAIN_MUTE)
		reg &= ~AC_AMP_FAKE_MUTE;

	err = FUNC6(codec, reg, 0, val);
	if (err < 0)
		goto out;
	/* special handling for asymmetric reads */
	if (verb == AC_VERB_GET_POWER_STATE) {
		if (*val & AC_PWRST_ERROR)
			*val = -1;
		else /* take only the actual state */
			*val = (*val >> 4) & 0x0f;
	}
 out:
	FUNC1(codec, pm_lock);
	return err;
}