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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct snd_soc_component* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC0(kcontrol);
	struct i2c_client *i2c = FUNC2(component->dev);
	int numcoef = kcontrol->private_value >> 16;
	int index = kcontrol->private_value & 0xffff;

	return FUNC1(i2c, index,
		ucontrol->value.integer.value, numcoef);
}