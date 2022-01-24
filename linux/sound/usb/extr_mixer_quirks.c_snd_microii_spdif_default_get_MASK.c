#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_mixer_elem_list {TYPE_1__* mixer; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {int* status; } ;
struct TYPE_8__ {TYPE_2__ iec958; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_10__ {unsigned int bEndpointAddress; } ;
struct TYPE_9__ {int bNumEndpoints; } ;
struct TYPE_6__ {struct snd_usb_audio* chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int IEC958_AES3_CON_FS_44100 ; 
 int IEC958_AES3_CON_FS_48000 ; 
 int UAC_EP_CS_ATTR_SAMPLE_RATE ; 
 int /*<<< orphan*/  UAC_GET_CUR ; 
 int USB_DIR_IN ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_CLASS ; 
 TYPE_5__* FUNC0 (struct usb_host_interface*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct usb_host_interface*) ; 
 struct usb_mixer_elem_list* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int,unsigned char*,int) ; 
 int FUNC4 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_audio*) ; 
 struct usb_interface* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_list *list = FUNC2(kcontrol);
	struct snd_usb_audio *chip = list->mixer->chip;
	int err;
	struct usb_interface *iface;
	struct usb_host_interface *alts;
	unsigned int ep;
	unsigned char data[3];
	int rate;

	err = FUNC4(chip);
	if (err < 0)
		return err;

	ucontrol->value.iec958.status[0] = kcontrol->private_value & 0xff;
	ucontrol->value.iec958.status[1] = (kcontrol->private_value >> 8) & 0xff;
	ucontrol->value.iec958.status[2] = 0x00;

	/* use known values for that card: interface#1 altsetting#1 */
	iface = FUNC6(chip->dev, 1);
	if (!iface || iface->num_altsetting < 2)
		return -EINVAL;
	alts = &iface->altsetting[1];
	if (FUNC1(alts)->bNumEndpoints < 1)
		return -EINVAL;
	ep = FUNC0(alts, 0)->bEndpointAddress;

	err = FUNC3(chip->dev,
			FUNC7(chip->dev, 0),
			UAC_GET_CUR,
			USB_TYPE_CLASS | USB_RECIP_ENDPOINT | USB_DIR_IN,
			UAC_EP_CS_ATTR_SAMPLE_RATE << 8,
			ep,
			data,
			sizeof(data));
	if (err < 0)
		goto end;

	rate = data[0] | (data[1] << 8) | (data[2] << 16);
	ucontrol->value.iec958.status[3] = (rate == 48000) ?
			IEC958_AES3_CON_FS_48000 : IEC958_AES3_CON_FS_44100;

	err = 0;
 end:
	FUNC5(chip);
	return err;
}