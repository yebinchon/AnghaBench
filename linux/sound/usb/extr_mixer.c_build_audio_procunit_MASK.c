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
struct usb_mixer_elem_info {int control; int channels; int master_readonly; int min; int max; int res; int initialized; TYPE_2__ head; int /*<<< orphan*/  val_type; } ;
struct uac_processing_unit_descriptor {int bNrInPins; int /*<<< orphan*/  wProcessType; int /*<<< orphan*/ * baSourceID; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_1__ id; int /*<<< orphan*/  private_free; } ;
struct procunit_value_info {int member_0; char* member_1; int control; char* suffix; int /*<<< orphan*/  min_value; int /*<<< orphan*/  val_type; int /*<<< orphan*/  member_2; } ;
struct procunit_info {int type; char const* name; struct procunit_value_info* values; struct procunit_value_info* member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct mixer_build {int /*<<< orphan*/  chip; TYPE_3__* mixer; int /*<<< orphan*/  map; } ;
typedef  int __u8 ;
struct TYPE_7__ {int protocol; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UAC3_UD_MODE_SELECT ; 
#define  UAC_PROCESS_UP_DOWNMIX 133 
 int UAC_UD_MODE_SELECT ; 
#define  UAC_VERSION_1 132 
#define  UAC_VERSION_2 131 
#define  UAC_VERSION_3 130 
#define  USB_MIXER_BOOLEAN 129 
#define  USB_XU_CLOCK_RATE 128 
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*,char*) ; 
 scalar_t__ FUNC1 (struct usbmix_name_map const*) ; 
 scalar_t__ FUNC2 (struct usbmix_name_map const*,int /*<<< orphan*/ ,int) ; 
 struct usbmix_name_map* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_mixer_elem_info*,int /*<<< orphan*/ ) ; 
 struct usb_mixer_elem_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mixer_procunit_ctl ; 
 int FUNC7 (struct mixer_build*,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC8 (int /*<<< orphan*/ *,struct usb_mixer_elem_info*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_2__*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  snd_usb_mixer_elem_free ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC13 (struct uac_processing_unit_descriptor*,int) ; 
 int* FUNC14 (struct uac_processing_unit_descriptor*,int) ; 
 int FUNC15 (struct uac_processing_unit_descriptor*,int) ; 
 int* FUNC16 (struct uac_processing_unit_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_mixer_elem_info*) ; 

__attribute__((used)) static int FUNC21(struct mixer_build *state, int unitid,
				void *raw_desc, struct procunit_info *list,
				bool extension_unit)
{
	struct uac_processing_unit_descriptor *desc = raw_desc;
	int num_ins;
	struct usb_mixer_elem_info *cval;
	struct snd_kcontrol *kctl;
	int i, err, nameid, type, len;
	struct procunit_info *info;
	struct procunit_value_info *valinfo;
	const struct usbmix_name_map *map;
	static struct procunit_value_info default_value_info[] = {
		{ 0x01, "Switch", USB_MIXER_BOOLEAN },
		{ 0 }
	};
	static struct procunit_info default_info = {
		0, NULL, default_value_info
	};
	const char *name = extension_unit ?
		"Extension Unit" : "Processing Unit";

	num_ins = desc->bNrInPins;
	for (i = 0; i < num_ins; i++) {
		err = FUNC7(state, desc->baSourceID[i]);
		if (err < 0)
			return err;
	}

	type = FUNC6(desc->wProcessType);
	for (info = list; info && info->type; info++)
		if (info->type == type)
			break;
	if (!info || !info->type)
		info = &default_info;

	for (valinfo = info->values; valinfo->control; valinfo++) {
		__u8 *controls = FUNC14(desc, state->mixer->protocol);

		if (state->mixer->protocol == UAC_VERSION_1) {
			if (!(controls[valinfo->control / 8] &
					(1 << ((valinfo->control % 8) - 1))))
				continue;
		} else { /* UAC_VERSION_2/3 */
			if (!FUNC17(controls[valinfo->control / 8],
							  valinfo->control))
				continue;
		}

		map = FUNC3(state->map, unitid, valinfo->control);
		if (FUNC1(map))
			continue;
		cval = FUNC5(sizeof(*cval), GFP_KERNEL);
		if (!cval)
			return -ENOMEM;
		FUNC11(&cval->head, state->mixer, unitid);
		cval->control = valinfo->control;
		cval->val_type = valinfo->val_type;
		cval->channels = 1;

		if (state->mixer->protocol > UAC_VERSION_1 &&
		    !FUNC18(controls[valinfo->control / 8],
						   valinfo->control))
			cval->master_readonly = 1;

		/* get min/max values */
		switch (type) {
		case UAC_PROCESS_UP_DOWNMIX: {
			bool mode_sel = false;

			switch (state->mixer->protocol) {
			case UAC_VERSION_1:
			case UAC_VERSION_2:
			default:
				if (cval->control == UAC_UD_MODE_SELECT)
					mode_sel = true;
				break;
			case UAC_VERSION_3:
				if (cval->control == UAC3_UD_MODE_SELECT)
					mode_sel = true;
				break;
			}

			if (mode_sel) {
				__u8 *control_spec = FUNC16(desc,
								state->mixer->protocol);
				cval->min = 1;
				cval->max = control_spec[0];
				cval->res = 1;
				cval->initialized = 1;
				break;
			}

			FUNC4(cval, valinfo->min_value);
			break;
		}
		case USB_XU_CLOCK_RATE:
			/*
			 * E-Mu USB 0404/0202/TrackerPre/0204
			 * samplerate control quirk
			 */
			cval->min = 0;
			cval->max = 5;
			cval->res = 1;
			cval->initialized = 1;
			break;
		default:
			FUNC4(cval, valinfo->min_value);
			break;
		}

		kctl = FUNC8(&mixer_procunit_ctl, cval);
		if (!kctl) {
			FUNC20(cval);
			return -ENOMEM;
		}
		kctl->private_free = snd_usb_mixer_elem_free;

		if (FUNC2(map, kctl->id.name, sizeof(kctl->id.name))) {
			/* nothing */ ;
		} else if (info->name) {
			FUNC12(kctl->id.name, info->name, sizeof(kctl->id.name));
		} else {
			if (extension_unit)
				nameid = FUNC13(desc, state->mixer->protocol);
			else
				nameid = FUNC15(desc, state->mixer->protocol);
			len = 0;
			if (nameid)
				len = FUNC9(state->chip,
							       nameid,
							       kctl->id.name,
							       sizeof(kctl->id.name));
			if (!len)
				FUNC12(kctl->id.name, name, sizeof(kctl->id.name));
		}
		FUNC0(kctl, " ");
		FUNC0(kctl, valinfo->suffix);

		FUNC19(state->chip,
			      "[%d] PU [%s] ch = %d, val = %d/%d\n",
			      cval->head.id, kctl->id.name, cval->channels,
			      cval->min, cval->max);

		err = FUNC10(&cval->head, kctl);
		if (err < 0)
			return err;
	}
	return 0;
}