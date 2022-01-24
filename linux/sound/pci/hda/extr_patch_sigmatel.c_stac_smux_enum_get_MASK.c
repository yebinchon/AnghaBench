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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct sigmatel_spec {int /*<<< orphan*/ * cur_smux; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct sigmatel_spec *spec = codec->spec;
	unsigned int smux_idx = FUNC0(kcontrol, &ucontrol->id);

	ucontrol->value.enumerated.item[0] = spec->cur_smux[smux_idx];
	return 0;
}