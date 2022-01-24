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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/  item; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vref_texts ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC4(kcontrol);
	hda_nid_t nid = kcontrol->private_value;
	unsigned int vref_caps = FUNC0(codec, nid);

	FUNC3(kcontrol, uinfo, FUNC2(vref_caps),
				 vref_texts);
	/* set the right text */
	FUNC5(uinfo->value.enumerated.name,
	       vref_texts[FUNC1(vref_caps, uinfo->value.enumerated.item)]);
	return 0;
}