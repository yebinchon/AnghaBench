#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int /*<<< orphan*/  i2c; struct ews_spec* spec; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ews_spec {int /*<<< orphan*/ * i2cdevs; } ;

/* Variables and functions */
 int EIO ; 
 size_t EWS_I2C_88D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC4(kcontrol);
	struct ews_spec *spec = ice->spec;
	int shift = kcontrol->private_value & 0xff;
	int invert = (kcontrol->private_value >> 8) & 1;
	unsigned char data[2], ndata[2];
	int change;

	FUNC0(ice->i2c);
	if (FUNC1(spec->i2cdevs[EWS_I2C_88D], data, 2) != 2) {
		FUNC3(ice->i2c);
		return -EIO;
	}
	ndata[shift >> 3] = data[shift >> 3] & ~(1 << (shift & 7));
	if (invert) {
		if (! ucontrol->value.integer.value[0])
			ndata[shift >> 3] |= (1 << (shift & 7));
	} else {
		if (ucontrol->value.integer.value[0])
			ndata[shift >> 3] |= (1 << (shift & 7));
	}
	change = (data[shift >> 3] != ndata[shift >> 3]);
	if (change &&
	    FUNC2(spec->i2cdevs[EWS_I2C_88D], data, 2) != 2) {
		FUNC3(ice->i2c);
		return -EIO;
	}
	FUNC3(ice->i2c);
	return change;
}