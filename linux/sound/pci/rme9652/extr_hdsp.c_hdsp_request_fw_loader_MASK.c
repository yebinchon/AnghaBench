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
struct hdsp {int io_type; int firmware_rev; int state; TYPE_2__* card; struct firmware const* firmware; TYPE_1__* pci; } ;
struct firmware {scalar_t__ size; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  Digiface 130 
 int EINVAL ; 
 int ENOENT ; 
 int H9632 ; 
 int H9652 ; 
 scalar_t__ HDSP_FIRMWARE_SIZE ; 
 int HDSP_FirmwareCached ; 
 int HDSP_InitializationComplete ; 
#define  Multiface 129 
#define  RPM 128 
 int Undefined ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 scalar_t__ FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,struct hdsp*) ; 
 int FUNC5 (TYPE_2__*,struct hdsp*) ; 
 int FUNC6 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC7 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdsp*) ; 
 int FUNC9 (struct hdsp*) ; 

__attribute__((used)) static int FUNC10(struct hdsp *hdsp)
{
	const char *fwfile;
	const struct firmware *fw;
	int err;

	if (hdsp->io_type == H9652 || hdsp->io_type == H9632)
		return 0;
	if (hdsp->io_type == Undefined) {
		if ((err = FUNC1(hdsp)) < 0)
			return err;
		if (hdsp->io_type == H9652 || hdsp->io_type == H9632)
			return 0;
	}

	/* caution: max length of firmware filename is 30! */
	switch (hdsp->io_type) {
	case RPM:
		fwfile = "rpm_firmware.bin";
		break;
	case Multiface:
		if (hdsp->firmware_rev == 0xa)
			fwfile = "multiface_firmware.bin";
		else
			fwfile = "multiface_firmware_rev11.bin";
		break;
	case Digiface:
		if (hdsp->firmware_rev == 0xa)
			fwfile = "digiface_firmware.bin";
		else
			fwfile = "digiface_firmware_rev11.bin";
		break;
	default:
		FUNC0(hdsp->card->dev,
			"invalid io_type %d\n", hdsp->io_type);
		return -EINVAL;
	}

	if (FUNC3(&fw, fwfile, &hdsp->pci->dev)) {
		FUNC0(hdsp->card->dev,
			"cannot load firmware %s\n", fwfile);
		return -ENOENT;
	}
	if (fw->size < HDSP_FIRMWARE_SIZE) {
		FUNC0(hdsp->card->dev,
			"too short firmware size %d (expected %d)\n",
			   (int)fw->size, HDSP_FIRMWARE_SIZE);
		FUNC2(fw);
		return -EINVAL;
	}

	hdsp->firmware = fw;

	hdsp->state |= HDSP_FirmwareCached;

	if ((err = FUNC9(hdsp)) < 0)
		return err;

	if (!(hdsp->state & HDSP_InitializationComplete)) {
		if ((err = FUNC6(hdsp)) < 0)
			return err;

		if ((err = FUNC5(hdsp->card, hdsp)) < 0) {
			FUNC0(hdsp->card->dev,
				"error creating hwdep device\n");
			return err;
		}
		FUNC7(hdsp);
		FUNC8(hdsp);
		if ((err = FUNC4(hdsp->card, hdsp)) < 0) {
			FUNC0(hdsp->card->dev,
				"error creating alsa devices\n");
			return err;
		}
	}
	return 0;
}