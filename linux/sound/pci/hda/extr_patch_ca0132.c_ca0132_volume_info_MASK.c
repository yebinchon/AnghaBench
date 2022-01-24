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
struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; struct ca0132_spec* spec; } ;
struct ca0132_spec {int shared_out_nid; int shared_mic_nid; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 void* FUNC0 (int,int,int /*<<< orphan*/ ,int) ; 
#define  VNID_MIC 129 
#define  VNID_SPK 128 
 int FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ; 
 struct hda_codec* FUNC7 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC7(kcontrol);
	struct ca0132_spec *spec = codec->spec;
	hda_nid_t nid = FUNC3(kcontrol);
	int ch = FUNC1(kcontrol);
	int dir = FUNC2(kcontrol);
	unsigned long pval;
	int err;

	switch (nid) {
	case VNID_SPK:
		/* follow shared_out info */
		nid = spec->shared_out_nid;
		FUNC4(&codec->control_mutex);
		pval = kcontrol->private_value;
		kcontrol->private_value = FUNC0(nid, ch, 0, dir);
		err = FUNC6(kcontrol, uinfo);
		kcontrol->private_value = pval;
		FUNC5(&codec->control_mutex);
		break;
	case VNID_MIC:
		/* follow shared_mic info */
		nid = spec->shared_mic_nid;
		FUNC4(&codec->control_mutex);
		pval = kcontrol->private_value;
		kcontrol->private_value = FUNC0(nid, ch, 0, dir);
		err = FUNC6(kcontrol, uinfo);
		kcontrol->private_value = pval;
		FUNC5(&codec->control_mutex);
		break;
	default:
		err = FUNC6(kcontrol, uinfo);
	}
	return err;
}