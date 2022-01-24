#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_oxfw {TYPE_1__* card; int /*<<< orphan*/  unit; struct fw_spkr* spec; } ;
struct snd_kcontrol_new {char* name; int /*<<< orphan*/  put; int /*<<< orphan*/  get; int /*<<< orphan*/  info; int /*<<< orphan*/  const iface; } ;
struct fw_spkr {int mixer_channels; int mute_fb_id; int volume_fb_id; int /*<<< orphan*/ * volume; int /*<<< orphan*/  mute; int /*<<< orphan*/  volume_max; int /*<<< orphan*/  volume_min; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol_new const*) ; 
 int /*<<< orphan*/  CTL_CURRENT ; 
 int /*<<< orphan*/  CTL_MAX ; 
 int /*<<< orphan*/  CTL_MIN ; 
 int /*<<< orphan*/  CTL_READ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SNDRV_CTL_ELEM_IFACE_MIXER 134 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fw_spkr* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  snd_ctl_boolean_mono_info 133 
 int /*<<< orphan*/  FUNC5 (struct snd_kcontrol_new const*,struct snd_oxfw*) ; 
#define  spkr_mute_get 132 
#define  spkr_mute_put 131 
#define  spkr_volume_get 130 
#define  spkr_volume_info 129 
#define  spkr_volume_put 128 

int FUNC6(struct snd_oxfw *oxfw, bool is_lacie)
{
	static const struct snd_kcontrol_new controls[] = {
		{
			.iface = SNDRV_CTL_ELEM_IFACE_MIXER,
			.name = "PCM Playback Switch",
			.info = snd_ctl_boolean_mono_info,
			.get = spkr_mute_get,
			.put = spkr_mute_put,
		},
		{
			.iface = SNDRV_CTL_ELEM_IFACE_MIXER,
			.name = "PCM Playback Volume",
			.info = spkr_volume_info,
			.get = spkr_volume_get,
			.put = spkr_volume_put,
		},
	};
	struct fw_spkr *spkr;
	unsigned int i, first_ch;
	int err;

	spkr = FUNC3(&oxfw->card->card_dev, sizeof(struct fw_spkr),
			    GFP_KERNEL);
	if (!spkr)
		return -ENOMEM;
	oxfw->spec = spkr;

	if (is_lacie) {
		spkr->mixer_channels = 1;
		spkr->mute_fb_id = 0x01;
		spkr->volume_fb_id = 0x01;
	} else {
		spkr->mixer_channels = 6;
		spkr->mute_fb_id = 0x01;
		spkr->volume_fb_id = 0x02;
	}

	err = FUNC2(oxfw->unit, spkr->volume_fb_id,
				       &spkr->volume_min, 0, CTL_MIN, CTL_READ);
	if (err < 0)
		return err;
	err = FUNC2(oxfw->unit, spkr->volume_fb_id,
				       &spkr->volume_max, 0, CTL_MAX, CTL_READ);
	if (err < 0)
		return err;

	err = FUNC1(oxfw->unit, spkr->mute_fb_id, &spkr->mute,
				     CTL_READ);
	if (err < 0)
		return err;

	first_ch = spkr->mixer_channels == 1 ? 0 : 1;
	for (i = 0; i < spkr->mixer_channels; ++i) {
		err = FUNC2(oxfw->unit, spkr->volume_fb_id,
					       &spkr->volume[i], first_ch + i,
					       CTL_CURRENT, CTL_READ);
		if (err < 0)
			return err;
	}

	for (i = 0; i < FUNC0(controls); ++i) {
		err = FUNC4(oxfw->card,
				  FUNC5(&controls[i], oxfw));
		if (err < 0)
			return err;
	}

	return 0;
}