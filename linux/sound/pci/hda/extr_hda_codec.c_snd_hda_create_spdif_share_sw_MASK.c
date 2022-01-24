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
struct snd_kcontrol {int dummy; } ;
struct hda_multi_out {int /*<<< orphan*/  dig_out_nid; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct snd_kcontrol* FUNC0 (int /*<<< orphan*/ *,struct hda_multi_out*) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  spdif_share_sw ; 

int FUNC2(struct hda_codec *codec,
				  struct hda_multi_out *mout)
{
	struct snd_kcontrol *kctl;

	if (!mout->dig_out_nid)
		return 0;

	kctl = FUNC0(&spdif_share_sw, mout);
	if (!kctl)
		return -ENOMEM;
	/* ATTENTION: here mout is passed as private_data, instead of codec */
	return FUNC1(codec, mout->dig_out_nid, kctl);
}