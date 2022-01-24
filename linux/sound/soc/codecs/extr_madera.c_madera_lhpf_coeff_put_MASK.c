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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct madera_priv* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 

int FUNC6(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC5(kcontrol);
	struct madera_priv *priv = FUNC4(component);
	struct madera *madera = priv->madera;
	__be16 *data = (__be16 *)ucontrol->value.bytes.data;
	s16 val = FUNC1(*data);

	if (FUNC0(val) >= 4096) {
		FUNC2(madera->dev, "Rejecting unstable LHPF coefficients\n");
		return -EINVAL;
	}

	return FUNC3(kcontrol, ucontrol);
}