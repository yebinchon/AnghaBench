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
struct usb_interface_descriptor {int bInterfaceProtocol; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; int bNumEndpoints; int bAlternateSetting; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_power_domain {int dummy; } ;
struct snd_usb_audio {scalar_t__ usb_id; struct usb_device* dev; } ;
struct audioformat {int altsetting; int channels; int maxpacksize; scalar_t__ fmt_type; int endpoint; int /*<<< orphan*/  rate_max; int /*<<< orphan*/  formats; } ;
struct TYPE_2__ {int bmAttributes; int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct audioformat*) ; 
 int FUNC1 (struct audioformat*) ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_S16_LE ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ UAC_FORMAT_TYPE_I ; 
#define  UAC_VERSION_1 130 
#define  UAC_VERSION_2 129 
#define  UAC_VERSION_3 128 
 scalar_t__ USB_CLASS_AUDIO ; 
 scalar_t__ USB_CLASS_VENDOR_SPEC ; 
 int USB_DIR_IN ; 
 int USB_ENDPOINT_XFERTYPE_MASK ; 
 int USB_ENDPOINT_XFER_ISOC ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ USB_SUBCLASS_AUDIOSTREAMING ; 
 scalar_t__ USB_SUBCLASS_VENDOR_SPEC ; 
 int /*<<< orphan*/  FUNC4 (struct audioformat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 TYPE_1__* FUNC6 (struct usb_host_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface_descriptor* FUNC7 (struct usb_host_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_usb_power_domain*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_usb_audio*,int,struct audioformat*) ; 
 int FUNC11 (struct snd_usb_audio*,int,struct audioformat*,struct snd_usb_power_domain*) ; 
 scalar_t__ FUNC12 (struct snd_usb_audio*,int,int) ; 
 struct audioformat* FUNC13 (struct snd_usb_audio*,struct usb_host_interface*,int,int,int,int,int,int) ; 
 struct audioformat* FUNC14 (struct snd_usb_audio*,struct usb_host_interface*,struct snd_usb_power_domain**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC17 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*,int,int) ; 

__attribute__((used)) static int FUNC19(struct snd_usb_audio *chip,
					   int iface_no,
					   bool *has_non_pcm, bool non_pcm)
{
	struct usb_device *dev;
	struct usb_interface *iface;
	struct usb_host_interface *alts;
	struct usb_interface_descriptor *altsd;
	int i, altno, err, stream;
	struct audioformat *fp = NULL;
	struct snd_usb_power_domain *pd = NULL;
	int num, protocol;

	dev = chip->dev;

	/* parse the interface's altsettings */
	iface = FUNC17(dev, iface_no);

	num = iface->num_altsetting;

	/*
	 * Dallas DS4201 workaround: It presents 5 altsettings, but the last
	 * one misses syncpipe, and does not produce any sound.
	 */
	if (chip->usb_id == FUNC2(0x04fa, 0x4201))
		num = 4;

	for (i = 0; i < num; i++) {
		alts = &iface->altsetting[i];
		altsd = FUNC7(alts);
		protocol = altsd->bInterfaceProtocol;
		/* skip invalid one */
		if (((altsd->bInterfaceClass != USB_CLASS_AUDIO ||
		      (altsd->bInterfaceSubClass != USB_SUBCLASS_AUDIOSTREAMING &&
		       altsd->bInterfaceSubClass != USB_SUBCLASS_VENDOR_SPEC)) &&
		     altsd->bInterfaceClass != USB_CLASS_VENDOR_SPEC) ||
		    altsd->bNumEndpoints < 1 ||
		    FUNC9(FUNC6(alts, 0)->wMaxPacketSize) == 0)
			continue;
		/* must be isochronous */
		if ((FUNC6(alts, 0)->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) !=
		    USB_ENDPOINT_XFER_ISOC)
			continue;
		/* check direction */
		stream = (FUNC6(alts, 0)->bEndpointAddress & USB_DIR_IN) ?
			SNDRV_PCM_STREAM_CAPTURE : SNDRV_PCM_STREAM_PLAYBACK;
		altno = altsd->bAlternateSetting;

		if (FUNC12(chip, iface_no, altno))
			continue;

		/*
		 * Roland audio streaming interfaces are marked with protocols
		 * 0/1/2, but are UAC 1 compatible.
		 */
		if (FUNC3(chip->usb_id) == 0x0582 &&
		    altsd->bInterfaceClass == USB_CLASS_VENDOR_SPEC &&
		    protocol <= 2)
			protocol = UAC_VERSION_1;

		switch (protocol) {
		default:
			FUNC5(&dev->dev, "%u:%d: unknown interface protocol %#02x, assuming v1\n",
				iface_no, altno, protocol);
			protocol = UAC_VERSION_1;
			/* fall through */
		case UAC_VERSION_1:
			/* fall through */
		case UAC_VERSION_2: {
			int bm_quirk = 0;

			/*
			 * Blue Microphones workaround: The last altsetting is
			 * identical with the previous one, except for a larger
			 * packet size, but is actually a mislabeled two-channel
			 * setting; ignore it.
			 *
			 * Part 1: prepare quirk flag
			 */
			if (altno == 2 && num == 3 &&
			    fp && fp->altsetting == 1 && fp->channels == 1 &&
			    fp->formats == SNDRV_PCM_FMTBIT_S16_LE &&
			    protocol == UAC_VERSION_1 &&
			    FUNC9(FUNC6(alts, 0)->wMaxPacketSize) ==
							fp->maxpacksize * 2)
				bm_quirk = 1;

			fp = FUNC13(chip, alts, protocol,
							   iface_no, i, altno,
							   stream, bm_quirk);
			break;
		}
		case UAC_VERSION_3:
			fp = FUNC14(chip, alts, &pd,
						iface_no, i, altno, stream);
			break;
		}

		if (!fp)
			continue;
		else if (FUNC0(fp))
			return FUNC1(fp);

		if (fp->fmt_type != UAC_FORMAT_TYPE_I)
			*has_non_pcm = true;
		if ((fp->fmt_type == UAC_FORMAT_TYPE_I) == non_pcm) {
			FUNC4(fp);
			FUNC8(pd);
			fp = NULL;
			pd = NULL;
			continue;
		}

		FUNC5(&dev->dev, "%u:%d: add audio endpoint %#x\n", iface_no, altno, fp->endpoint);
		if (protocol == UAC_VERSION_3)
			err = FUNC11(chip, stream, fp, pd);
		else
			err = FUNC10(chip, stream, fp);

		if (err < 0) {
			FUNC4(fp);
			FUNC8(pd);
			return err;
		}
		/* try to set the interface... */
		FUNC18(chip->dev, iface_no, altno);
		FUNC15(chip, iface_no, alts, fp);
		FUNC16(chip, iface_no, alts, fp, fp->rate_max);
	}
	return 0;
}