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
struct twl4030_priv {scalar_t__ configured; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct twl4030_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct twl4030_priv *twl4030 = FUNC1(component);

	if (twl4030->configured) {
		FUNC0(component->dev,
			"operation mode cannot be changed on-the-fly\n");
		return -EBUSY;
	}

	return FUNC3(kcontrol, ucontrol);
}