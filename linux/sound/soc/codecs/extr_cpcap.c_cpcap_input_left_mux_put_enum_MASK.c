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
struct soc_enum {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cpcap_audio {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPCAP_BIT_MIC2_MUX ; 
 int /*<<< orphan*/  CPCAP_BIT_RX_L_ENCODE ; 
 int /*<<< orphan*/  CPCAP_REG_TXI ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cpcap_audio* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
					 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct cpcap_audio *cpcap = FUNC2(component);
	struct snd_soc_dapm_context *dapm =
		FUNC4(kcontrol);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int muxval = ucontrol->value.enumerated.item[0];
	int regval = 0, mask;
	int err;

	mask = 0;
	mask |= FUNC0(CPCAP_BIT_MIC2_MUX);
	mask |= FUNC0(CPCAP_BIT_RX_L_ENCODE);

	switch (muxval) {
	case 1:
		regval = FUNC0(CPCAP_BIT_MIC2_MUX);
		break;
	case 2:
		regval = FUNC0(CPCAP_BIT_RX_L_ENCODE);
		break;
	default:
		break;
	}

	err = FUNC1(cpcap->regmap, CPCAP_REG_TXI,
				 mask, regval);
	if (err)
		return err;

	FUNC5(dapm, kcontrol, muxval, e, NULL);

	return 0;
}