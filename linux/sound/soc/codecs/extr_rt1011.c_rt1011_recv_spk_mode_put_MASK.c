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
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rt1011_priv {scalar_t__ recv_spk_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT1011_CLASSD_INTERNAL_SET_1 ; 
 int /*<<< orphan*/  RT1011_CLASSD_INTERNAL_SET_3 ; 
 int /*<<< orphan*/  RT1011_RECV_MODE ; 
 int /*<<< orphan*/  RT1011_RECV_MODE_SPK_MASK ; 
 int /*<<< orphan*/  RT1011_REG_GAIN_CLASSD_RI_410K ; 
 int /*<<< orphan*/  RT1011_REG_GAIN_CLASSD_RI_72P5K ; 
 int /*<<< orphan*/  RT1011_REG_GAIN_CLASSD_RI_SPK_MASK ; 
 int /*<<< orphan*/  RT1011_SPK_MODE ; 
 scalar_t__ SND_SOC_BIAS_OFF ; 
 scalar_t__ FUNC0 (struct snd_soc_component*) ; 
 struct rt1011_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC3(kcontrol);
	struct rt1011_priv *rt1011 =
		FUNC1(component);

	if (ucontrol->value.integer.value[0] == rt1011->recv_spk_mode)
		return 0;

	if (FUNC0(component) == SND_SOC_BIAS_OFF) {
		rt1011->recv_spk_mode = ucontrol->value.integer.value[0];

		if (rt1011->recv_spk_mode) {

			/* 1: recevier mode on */
			FUNC2(component,
				RT1011_CLASSD_INTERNAL_SET_3,
				RT1011_REG_GAIN_CLASSD_RI_SPK_MASK,
				RT1011_REG_GAIN_CLASSD_RI_410K);
			FUNC2(component,
				RT1011_CLASSD_INTERNAL_SET_1,
				RT1011_RECV_MODE_SPK_MASK,
				RT1011_RECV_MODE);
		} else {
			/* 0: speaker mode on */
			FUNC2(component,
				RT1011_CLASSD_INTERNAL_SET_3,
				RT1011_REG_GAIN_CLASSD_RI_SPK_MASK,
				RT1011_REG_GAIN_CLASSD_RI_72P5K);
			FUNC2(component,
				RT1011_CLASSD_INTERNAL_SET_1,
				RT1011_RECV_MODE_SPK_MASK,
				RT1011_SPK_MODE);
		}
	}

	return 0;
}