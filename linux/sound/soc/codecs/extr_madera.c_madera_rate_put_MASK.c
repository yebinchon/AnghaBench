#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_enum {unsigned int items; unsigned int shift_l; unsigned int mask; int /*<<< orphan*/  reg; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_4__ id; scalar_t__ private_value; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {int /*<<< orphan*/  rate_lock; TYPE_3__* madera; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct madera_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct madera_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct madera_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC7 (struct soc_enum*,unsigned int) ; 
 struct snd_soc_component* FUNC8 (struct snd_kcontrol*) ; 
 int FUNC9 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

int FUNC10(struct snd_kcontrol *kcontrol,
		    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC8(kcontrol);
	struct madera_priv *priv = FUNC5(component);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int item = ucontrol->value.enumerated.item[0];
	unsigned int val;
	int ret;

	if (item >= e->items)
		return -EINVAL;

	/*
	 * Prevent the domain powering up while we're checking whether it's
	 * safe to change rate domain
	 */
	FUNC3(&priv->rate_lock);

	ret = FUNC6(component, e->reg, &val);
	if (ret < 0) {
		FUNC0(priv->madera->dev, "Failed to read 0x%x (%d)\n",
			 e->reg, ret);
		goto out;
	}
	val >>= e->shift_l;
	val &= e->mask;
	if (FUNC7(e, item) == val) {
		ret = 0;
		goto out;
	}

	if (!FUNC1(priv, e->reg)) {
		FUNC0(priv->madera->dev,
			 "Cannot change '%s' while in use by active audio paths\n",
			 kcontrol->id.name);
		ret = -EBUSY;
	} else {
		/* The write must be guarded by a number of SYSCLK cycles */
		FUNC2(priv);
		ret = FUNC9(kcontrol, ucontrol);
		FUNC2(priv);
	}
out:
	FUNC4(&priv->rate_lock);

	return ret;
}