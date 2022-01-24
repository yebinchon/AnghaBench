#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct via82xx {scalar_t__ chip_type; int /*<<< orphan*/  pci; struct snd_kcontrol** dxs_controls; TYPE_7__* card; int /*<<< orphan*/  ac97; } ;
struct TYPE_9__ {int subdevice; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_ctl_elem_id {int /*<<< orphan*/  iface; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  sid ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 scalar_t__ TYPE_VIA8233A ; 
 int /*<<< orphan*/  VIA8233_SPDIF_CTRL ; 
 unsigned char VIA8233_SPDIF_DX3 ; 
 unsigned char VIA8233_SPDIF_SLOT_1011 ; 
 unsigned char VIA8233_SPDIF_SLOT_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC5 (TYPE_7__*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,struct snd_ctl_elem_id*) ; 
 struct snd_kcontrol* FUNC7 (TYPE_2__*,struct via82xx*) ; 
 TYPE_2__ snd_via8233_capture_source ; 
 TYPE_2__ snd_via8233_dxs3_spdif_control ; 
 TYPE_2__ snd_via8233_dxs_volume_control ; 
 TYPE_2__ snd_via8233_pcmdxs_volume_control ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct via82xx *chip)
{
	int i, err, caps;
	unsigned char val;

	caps = chip->chip_type == TYPE_VIA8233A ? 1 : 2;
	for (i = 0; i < caps; i++) {
		snd_via8233_capture_source.index = i;
		err = FUNC5(chip->card, FUNC7(&snd_via8233_capture_source, chip));
		if (err < 0)
			return err;
	}
	if (FUNC0(chip->ac97)) {
		err = FUNC5(chip->card, FUNC7(&snd_via8233_dxs3_spdif_control, chip));
		if (err < 0)
			return err;
	}
	if (chip->chip_type != TYPE_VIA8233A) {
		/* when no h/w PCM volume control is found, use DXS volume control
		 * as the PCM vol control
		 */
		struct snd_ctl_elem_id sid;
		FUNC2(&sid, 0, sizeof(sid));
		FUNC8(sid.name, "PCM Playback Volume");
		sid.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
		if (! FUNC6(chip->card, &sid)) {
			FUNC1(chip->card->dev,
				 "Using DXS as PCM Playback\n");
			err = FUNC5(chip->card, FUNC7(&snd_via8233_pcmdxs_volume_control, chip));
			if (err < 0)
				return err;
		}
		else /* Using DXS when PCM emulation is enabled is really weird */
		{
			for (i = 0; i < 4; ++i) {
				struct snd_kcontrol *kctl;

				kctl = FUNC7(
					&snd_via8233_dxs_volume_control, chip);
				if (!kctl)
					return -ENOMEM;
				kctl->id.subdevice = i;
				err = FUNC5(chip->card, kctl);
				if (err < 0)
					return err;
				chip->dxs_controls[i] = kctl;
			}
		}
	}
	/* select spdif data slot 10/11 */
	FUNC3(chip->pci, VIA8233_SPDIF_CTRL, &val);
	val = (val & ~VIA8233_SPDIF_SLOT_MASK) | VIA8233_SPDIF_SLOT_1011;
	val &= ~VIA8233_SPDIF_DX3; /* SPDIF off as default */
	FUNC4(chip->pci, VIA8233_SPDIF_CTRL, val);

	return 0;
}