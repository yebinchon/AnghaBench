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
typedef  int /*<<< orphan*/  u32 ;
struct usb_host_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct uac_clock_source_descriptor {int /*<<< orphan*/  bmControls; } ;
struct uac3_clock_source_descriptor {int /*<<< orphan*/  bmControls; } ;
struct snd_usb_audio {int /*<<< orphan*/  ctrl_intf; struct usb_device* dev; } ;
struct audioformat {scalar_t__ protocol; int /*<<< orphan*/  altsetting; int /*<<< orphan*/  clock; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENXIO ; 
 int UAC2_CS_CONTROL_SAM_FREQ ; 
 int /*<<< orphan*/  UAC2_CS_CUR ; 
 scalar_t__ UAC_VERSION_3 ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_usb_audio*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_usb_audio*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct snd_usb_audio*) ; 
 struct uac_clock_source_descriptor* FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct uac3_clock_source_descriptor* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_usb_audio*,scalar_t__,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_usb_audio*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_usb_audio*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_usb_audio*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct snd_usb_audio *chip, int iface,
			      struct usb_host_interface *alts,
			      struct audioformat *fmt, int rate)
{
	struct usb_device *dev = chip->dev;
	__le32 data;
	int err, cur_rate, prev_rate;
	int clock;
	bool writeable;
	u32 bmControls;

	/* First, try to find a valid clock. This may trigger
	 * automatic clock selection if the current clock is not
	 * valid.
	 */
	clock = FUNC3(chip, fmt->protocol,
					  fmt->clock, true);
	if (clock < 0) {
		/* We did not find a valid clock, but that might be
		 * because the current sample rate does not match an
		 * external clock source. Try again without validation
		 * and we will do another validation after setting the
		 * rate.
		 */
		clock = FUNC3(chip, fmt->protocol,
						  fmt->clock, false);
		if (clock < 0)
			return clock;
	}

	prev_rate = FUNC1(chip, iface, fmt->altsetting, clock);
	if (prev_rate == rate)
		goto validation;

	if (fmt->protocol == UAC_VERSION_3) {
		struct uac3_clock_source_descriptor *cs_desc;

		cs_desc = FUNC7(chip->ctrl_intf, clock);
		bmControls = FUNC2(cs_desc->bmControls);
	} else {
		struct uac_clock_source_descriptor *cs_desc;

		cs_desc = FUNC6(chip->ctrl_intf, clock);
		bmControls = cs_desc->bmControls;
	}

	writeable = FUNC10(bmControls,
						  UAC2_CS_CONTROL_SAM_FREQ);
	if (writeable) {
		data = FUNC0(rate);
		err = FUNC4(dev, FUNC15(dev, 0), UAC2_CS_CUR,
				      USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
				      UAC2_CS_CONTROL_SAM_FREQ << 8,
				      FUNC5(chip) | (clock << 8),
				      &data, sizeof(data));
		if (err < 0) {
			FUNC12(chip,
				"%d:%d: cannot set freq %d (v2/v3): err %d\n",
				iface, fmt->altsetting, rate, err);
			return err;
		}

		cur_rate = FUNC1(chip, iface,
						fmt->altsetting, clock);
	} else {
		cur_rate = prev_rate;
	}

	if (cur_rate != rate) {
		if (!writeable) {
			FUNC13(chip,
				 "%d:%d: freq mismatch (RO clock): req %d, clock runs @%d\n",
				 iface, fmt->altsetting, rate, cur_rate);
			return -ENXIO;
		}
		FUNC11(chip,
			"current rate %d is different from the runtime rate %d\n",
			cur_rate, rate);
	}

	/* Some devices doesn't respond to sample rate changes while the
	 * interface is active. */
	if (rate != prev_rate) {
		FUNC14(dev, iface, 0);
		FUNC8(dev);
		FUNC14(dev, iface, fmt->altsetting);
		FUNC8(dev);
	}

validation:
	/* validate clock after rate change */
	if (!FUNC9(chip, fmt->protocol, clock))
		return -ENXIO;
	return 0;
}