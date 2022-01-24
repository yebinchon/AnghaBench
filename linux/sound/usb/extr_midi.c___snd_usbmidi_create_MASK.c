#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct snd_usb_midi_endpoint_info {int /*<<< orphan*/  in_cables; int /*<<< orphan*/  out_cables; } ;
struct snd_usb_midi {unsigned int usb_id; int /*<<< orphan*/  list; struct usb_interface* iface; TYPE_2__* dev; int /*<<< orphan*/ * usb_protocol_ops; int /*<<< orphan*/  error_timer; int /*<<< orphan*/  mutex; int /*<<< orphan*/  disc_rwsem; int /*<<< orphan*/  disc_lock; struct snd_usb_audio_quirk const* quirk; struct snd_card* card; } ;
struct snd_usb_audio_quirk {int type; int /*<<< orphan*/  data; } ;
struct snd_card {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  endpoints ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MIDI_MAX_ENDPOINTS ; 
#define  QUIRK_MIDI_AKAI 140 
#define  QUIRK_MIDI_CH345 139 
#define  QUIRK_MIDI_CME 138 
#define  QUIRK_MIDI_EMAGIC 137 
#define  QUIRK_MIDI_FIXED_ENDPOINT 136 
#define  QUIRK_MIDI_FTDI 135 
#define  QUIRK_MIDI_MIDIMAN 134 
#define  QUIRK_MIDI_NOVATION 133 
#define  QUIRK_MIDI_RAW_BYTES 132 
#define  QUIRK_MIDI_ROLAND 131 
#define  QUIRK_MIDI_STANDARD_INTERFACE 130 
#define  QUIRK_MIDI_US122L 129 
#define  QUIRK_MIDI_YAMAHA 128 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_midi*) ; 
 struct snd_usb_midi* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_usb_midi_endpoint_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_usb_midi_endpoint_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_usbmidi_122l_ops ; 
 int /*<<< orphan*/  snd_usbmidi_akai_ops ; 
 int /*<<< orphan*/  snd_usbmidi_ch345_broken_sysex_ops ; 
 int /*<<< orphan*/  snd_usbmidi_cme_ops ; 
 int FUNC12 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ; 
 int FUNC13 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ; 
 int FUNC14 (struct snd_usb_midi*,int,int) ; 
 int FUNC15 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*,int) ; 
 int FUNC16 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ; 
 int FUNC17 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ; 
 int FUNC18 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ; 
 int /*<<< orphan*/  snd_usbmidi_emagic_ops ; 
 int /*<<< orphan*/  snd_usbmidi_error_timer ; 
 int /*<<< orphan*/  snd_usbmidi_ftdi_ops ; 
 int FUNC19 (struct snd_usb_midi*,struct snd_usb_midi_endpoint_info*) ; 
 int /*<<< orphan*/  snd_usbmidi_maudio_broken_running_status_ops ; 
 int /*<<< orphan*/  snd_usbmidi_midiman_ops ; 
 int /*<<< orphan*/  snd_usbmidi_novation_ops ; 
 int /*<<< orphan*/  snd_usbmidi_raw_ops ; 
 int /*<<< orphan*/  snd_usbmidi_standard_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_interface*) ; 
 int FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC26(struct snd_card *card,
			 struct usb_interface *iface,
			 struct list_head *midi_list,
			 const struct snd_usb_audio_quirk *quirk,
			 unsigned int usb_id)
{
	struct snd_usb_midi *umidi;
	struct snd_usb_midi_endpoint_info endpoints[MIDI_MAX_ENDPOINTS];
	int out_ports, in_ports;
	int i, err;

	umidi = FUNC6(sizeof(*umidi), GFP_KERNEL);
	if (!umidi)
		return -ENOMEM;
	umidi->dev = FUNC4(iface);
	umidi->card = card;
	umidi->iface = iface;
	umidi->quirk = quirk;
	umidi->usb_protocol_ops = &snd_usbmidi_standard_ops;
	FUNC20(&umidi->disc_lock);
	FUNC3(&umidi->disc_rwsem);
	FUNC11(&umidi->mutex);
	if (!usb_id)
		usb_id = FUNC0(FUNC7(umidi->dev->descriptor.idVendor),
			       FUNC7(umidi->dev->descriptor.idProduct));
	umidi->usb_id = usb_id;
	FUNC21(&umidi->error_timer, snd_usbmidi_error_timer, 0);

	/* detect the endpoint(s) to use */
	FUNC10(endpoints, 0, sizeof(endpoints));
	switch (quirk ? quirk->type : QUIRK_MIDI_STANDARD_INTERFACE) {
	case QUIRK_MIDI_STANDARD_INTERFACE:
		err = FUNC19(umidi, endpoints);
		if (umidi->usb_id == FUNC0(0x0763, 0x0150)) /* M-Audio Uno */
			umidi->usb_protocol_ops =
				&snd_usbmidi_maudio_broken_running_status_ops;
		break;
	case QUIRK_MIDI_US122L:
		umidi->usb_protocol_ops = &snd_usbmidi_122l_ops;
		/* fall through */
	case QUIRK_MIDI_FIXED_ENDPOINT:
		FUNC9(&endpoints[0], quirk->data,
		       sizeof(struct snd_usb_midi_endpoint_info));
		err = FUNC15(umidi, &endpoints[0], 1);
		break;
	case QUIRK_MIDI_YAMAHA:
		err = FUNC18(umidi, &endpoints[0]);
		break;
	case QUIRK_MIDI_ROLAND:
		err = FUNC17(umidi, &endpoints[0]);
		break;
	case QUIRK_MIDI_MIDIMAN:
		umidi->usb_protocol_ops = &snd_usbmidi_midiman_ops;
		FUNC9(&endpoints[0], quirk->data,
		       sizeof(struct snd_usb_midi_endpoint_info));
		err = 0;
		break;
	case QUIRK_MIDI_NOVATION:
		umidi->usb_protocol_ops = &snd_usbmidi_novation_ops;
		err = FUNC16(umidi, endpoints);
		break;
	case QUIRK_MIDI_RAW_BYTES:
		umidi->usb_protocol_ops = &snd_usbmidi_raw_ops;
		/*
		 * Interface 1 contains isochronous endpoints, but with the same
		 * numbers as in interface 0.  Since it is interface 1 that the
		 * USB core has most recently seen, these descriptors are now
		 * associated with the endpoint numbers.  This will foul up our
		 * attempts to submit bulk/interrupt URBs to the endpoints in
		 * interface 0, so we have to make sure that the USB core looks
		 * again at interface 0 by calling usb_set_interface() on it.
		 */
		if (umidi->usb_id == FUNC0(0x07fd, 0x0001)) /* MOTU Fastlane */
			FUNC24(umidi->dev, 0, 0);
		err = FUNC16(umidi, endpoints);
		break;
	case QUIRK_MIDI_EMAGIC:
		umidi->usb_protocol_ops = &snd_usbmidi_emagic_ops;
		FUNC9(&endpoints[0], quirk->data,
		       sizeof(struct snd_usb_midi_endpoint_info));
		err = FUNC15(umidi, &endpoints[0], 1);
		break;
	case QUIRK_MIDI_CME:
		umidi->usb_protocol_ops = &snd_usbmidi_cme_ops;
		err = FUNC16(umidi, endpoints);
		break;
	case QUIRK_MIDI_AKAI:
		umidi->usb_protocol_ops = &snd_usbmidi_akai_ops;
		err = FUNC16(umidi, endpoints);
		/* endpoint 1 is input-only */
		endpoints[1].out_cables = 0;
		break;
	case QUIRK_MIDI_FTDI:
		umidi->usb_protocol_ops = &snd_usbmidi_ftdi_ops;

		/* set baud rate to 31250 (48 MHz / 16 / 96) */
		err = FUNC23(umidi->dev, FUNC25(umidi->dev, 0),
				      3, 0x40, 0x60, 0, NULL, 0, 1000);
		if (err < 0)
			break;

		err = FUNC16(umidi, endpoints);
		break;
	case QUIRK_MIDI_CH345:
		umidi->usb_protocol_ops = &snd_usbmidi_ch345_broken_sysex_ops;
		err = FUNC16(umidi, endpoints);
		break;
	default:
		FUNC1(&umidi->dev->dev, "invalid quirk type %d\n",
			quirk->type);
		err = -ENXIO;
		break;
	}
	if (err < 0)
		goto free_midi;

	/* create rawmidi device */
	out_ports = 0;
	in_ports = 0;
	for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
		out_ports += FUNC2(endpoints[i].out_cables);
		in_ports += FUNC2(endpoints[i].in_cables);
	}
	err = FUNC14(umidi, out_ports, in_ports);
	if (err < 0)
		goto free_midi;

	/* create endpoint/port structures */
	if (quirk && quirk->type == QUIRK_MIDI_MIDIMAN)
		err = FUNC13(umidi, &endpoints[0]);
	else
		err = FUNC12(umidi, endpoints);
	if (err < 0)
		goto exit;

	FUNC22(umidi->iface);

	FUNC8(&umidi->list, midi_list);
	return 0;

free_midi:
	FUNC5(umidi);
exit:
	return err;
}