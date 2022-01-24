#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbmix_name_map {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct usb_mixer_elem_info {int control; int cmask; TYPE_2__ head; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  channels; int /*<<< orphan*/  val_type; } ;
struct usb_audio_term {int dummy; } ;
struct uac_mixer_unit_descriptor {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_1__ id; int /*<<< orphan*/  private_free; } ;
struct mixer_build {int /*<<< orphan*/  chip; TYPE_3__* mixer; int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_7__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_MIXER_S16 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*,char*) ; 
 scalar_t__ FUNC1 (struct usbmix_name_map const*) ; 
 unsigned int FUNC2 (struct usbmix_name_map const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,unsigned int,int) ; 
 struct usbmix_name_map* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_mixer_elem_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,struct usb_audio_term*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct usb_mixer_elem_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC8 (int /*<<< orphan*/ *,struct usb_mixer_elem_info*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  snd_usb_mixer_elem_free ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*,int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC12 (struct uac_mixer_unit_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  usb_feature_unit_ctl ; 
 int /*<<< orphan*/  FUNC15 (struct usb_mixer_elem_info*) ; 

__attribute__((used)) static void FUNC16(struct mixer_build *state,
				 struct uac_mixer_unit_descriptor *desc,
				 int in_pin, int in_ch, int num_outs,
				 int unitid, struct usb_audio_term *iterm)
{
	struct usb_mixer_elem_info *cval;
	unsigned int i, len;
	struct snd_kcontrol *kctl;
	const struct usbmix_name_map *map;

	map = FUNC4(state->map, unitid, 0);
	if (FUNC1(map))
		return;

	cval = FUNC7(sizeof(*cval), GFP_KERNEL);
	if (!cval)
		return;

	FUNC10(&cval->head, state->mixer, unitid);
	cval->control = in_ch + 1; /* based on 1 */
	cval->val_type = USB_MIXER_S16;
	for (i = 0; i < num_outs; i++) {
		__u8 *c = FUNC12(desc, state->mixer->protocol);

		if (FUNC3(c, in_ch, i, num_outs)) {
			cval->cmask |= (1 << i);
			cval->channels++;
		}
	}

	/* get min/max values */
	FUNC5(cval, 0);

	kctl = FUNC8(&usb_feature_unit_ctl, cval);
	if (!kctl) {
		FUNC14(state->chip, "cannot malloc kcontrol\n");
		FUNC15(cval);
		return;
	}
	kctl->private_free = snd_usb_mixer_elem_free;

	len = FUNC2(map, kctl->id.name, sizeof(kctl->id.name));
	if (!len)
		len = FUNC6(state->chip, iterm, kctl->id.name,
				    sizeof(kctl->id.name), 0);
	if (!len)
		len = FUNC11(kctl->id.name, "Mixer Source %d", in_ch + 1);
	FUNC0(kctl, " Volume");

	FUNC13(state->chip, "[%d] MU [%s] ch = %d, val = %d/%d\n",
		    cval->head.id, kctl->id.name, cval->channels, cval->min, cval->max);
	FUNC9(&cval->head, kctl);
}