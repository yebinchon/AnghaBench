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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct da7219_priv {int /*<<< orphan*/  ctrl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct da7219_priv* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 int FUNC4 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct da7219_priv *da7219 = FUNC2(component);
	int ret;

	FUNC0(&da7219->ctrl_lock);
	ret = FUNC4(kcontrol, ucontrol);
	FUNC1(&da7219->ctrl_lock);

	return ret;
}