#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface_descriptor {int /*<<< orphan*/  bAlternateSetting; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_substream {int interface; struct audioformat* cur_audiofmt; TYPE_1__* stream; int /*<<< orphan*/  data_endpoint; int /*<<< orphan*/  direction; scalar_t__ altset_idx; struct usb_device* dev; } ;
struct audioformat {int iface; int /*<<< orphan*/  endpoint; scalar_t__ altset_idx; int /*<<< orphan*/  altsetting; } ;
struct TYPE_5__ {int /*<<< orphan*/  keep_iface; } ;
struct TYPE_4__ {TYPE_2__* chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SND_USB_ENDPOINT_TYPE_DATA ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 struct usb_interface_descriptor* FUNC3 (struct usb_host_interface*) ; 
 int FUNC4 (struct snd_usb_substream*,struct audioformat*,struct usb_device*,struct usb_host_interface*,struct usb_interface_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct usb_host_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int,struct usb_host_interface*,struct audioformat*) ; 
 int FUNC7 (struct snd_usb_substream*,struct audioformat*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_usb_substream*,struct audioformat*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 struct usb_host_interface* FUNC10 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC11 (struct usb_device*,int) ; 
 int FUNC12 (struct usb_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct snd_usb_substream *subs, struct audioformat *fmt)
{
	struct usb_device *dev = subs->dev;
	struct usb_host_interface *alts;
	struct usb_interface_descriptor *altsd;
	struct usb_interface *iface;
	int err;

	iface = FUNC11(dev, fmt->iface);
	if (FUNC0(!iface))
		return -EINVAL;
	alts = FUNC10(iface, fmt->altsetting);
	altsd = FUNC3(alts);
	if (FUNC0(altsd->bAlternateSetting != fmt->altsetting))
		return -EINVAL;

	if (fmt == subs->cur_audiofmt)
		return 0;

	/* close the old interface */
	if (subs->interface >= 0 && subs->interface != fmt->iface) {
		if (!subs->stream->chip->keep_iface) {
			err = FUNC12(subs->dev, subs->interface, 0);
			if (err < 0) {
				FUNC2(&dev->dev,
					"%d:%d: return to setting 0 failed (%d)\n",
					fmt->iface, fmt->altsetting, err);
				return -EIO;
			}
		}
		subs->interface = -1;
		subs->altset_idx = 0;
	}

	/* set interface */
	if (iface->cur_altsetting != alts) {
		err = FUNC7(subs, fmt);
		if (err < 0)
			return -EIO;

		err = FUNC12(dev, fmt->iface, fmt->altsetting);
		if (err < 0) {
			FUNC2(&dev->dev,
				"%d:%d: usb_set_interface failed (%d)\n",
				fmt->iface, fmt->altsetting, err);
			return -EIO;
		}
		FUNC1(&dev->dev, "setting usb interface %d:%d\n",
			fmt->iface, fmt->altsetting);
		FUNC9(dev);
	}

	subs->interface = fmt->iface;
	subs->altset_idx = fmt->altset_idx;
	subs->data_endpoint = FUNC5(subs->stream->chip,
						   alts, fmt->endpoint, subs->direction,
						   SND_USB_ENDPOINT_TYPE_DATA);

	if (!subs->data_endpoint)
		return -EINVAL;

	err = FUNC4(subs, fmt, dev, alts, altsd);
	if (err < 0)
		return err;

	err = FUNC6(subs->stream->chip, fmt->iface, alts, fmt);
	if (err < 0)
		return err;

	subs->cur_audiofmt = fmt;

	FUNC8(subs, fmt);

	return 0;
}