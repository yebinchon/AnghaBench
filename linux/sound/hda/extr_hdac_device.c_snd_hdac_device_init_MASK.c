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
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;
struct hdac_device {unsigned int addr; int vendor_id; int subsystem_id; struct device dev; int /*<<< orphan*/  chip_name; void* power_caps; scalar_t__ mfg; scalar_t__ afg; void* revision_id; int /*<<< orphan*/  in_pm; int /*<<< orphan*/  widget_lock; int /*<<< orphan*/  type; struct hdac_bus* bus; } ;
struct hdac_bus {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 scalar_t__ AC_NODE_ROOT ; 
 int /*<<< orphan*/  AC_PAR_POWER_STATE ; 
 int /*<<< orphan*/  AC_PAR_REV_ID ; 
 int /*<<< orphan*/  AC_PAR_SUBSYSTEM_ID ; 
 int /*<<< orphan*/  AC_PAR_VENDOR_ID ; 
 int /*<<< orphan*/  AC_VERB_GET_SUBSYSTEM_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDA_DEV_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct hdac_device*) ; 
 int /*<<< orphan*/  hdac_dev_attr_groups ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct hdac_device*) ; 
 int /*<<< orphan*/  snd_hda_bus_type ; 
 int FUNC12 (struct hdac_bus*,struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct hdac_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* FUNC14 (struct hdac_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hdac_device*) ; 

int FUNC16(struct hdac_device *codec, struct hdac_bus *bus,
			 const char *name, unsigned int addr)
{
	struct device *dev;
	hda_nid_t fg;
	int err;

	dev = &codec->dev;
	FUNC4(dev);
	dev->parent = bus->dev;
	dev->bus = &snd_hda_bus_type;
	dev->release = default_release;
	dev->groups = hdac_dev_attr_groups;
	FUNC2(dev, "%s", name);
	FUNC3(dev);

	codec->bus = bus;
	codec->addr = addr;
	codec->type = HDA_DEV_CORE;
	FUNC7(&codec->widget_lock);
	FUNC9(&codec->dev);
	FUNC8(&codec->dev);
	FUNC0(&codec->in_pm, 0);

	err = FUNC12(bus, codec);
	if (err < 0)
		goto error;

	/* fill parameters */
	codec->vendor_id = FUNC14(codec, AC_NODE_ROOT,
					      AC_PAR_VENDOR_ID);
	if (codec->vendor_id == -1) {
		/* read again, hopefully the access method was corrected
		 * in the last read...
		 */
		codec->vendor_id = FUNC14(codec, AC_NODE_ROOT,
						      AC_PAR_VENDOR_ID);
	}

	codec->subsystem_id = FUNC14(codec, AC_NODE_ROOT,
						 AC_PAR_SUBSYSTEM_ID);
	codec->revision_id = FUNC14(codec, AC_NODE_ROOT,
						AC_PAR_REV_ID);

	FUNC11(codec);
	if (!codec->afg && !codec->mfg) {
		FUNC1(dev, "no AFG or MFG node found\n");
		err = -ENODEV;
		goto error;
	}

	fg = codec->afg ? codec->afg : codec->mfg;

	err = FUNC15(codec);
	if (err < 0)
		goto error;

	codec->power_caps = FUNC14(codec, fg, AC_PAR_POWER_STATE);
	/* reread ssid if not set by parameter */
	if (codec->subsystem_id == -1 || codec->subsystem_id == 0)
		FUNC13(codec, fg, AC_VERB_GET_SUBSYSTEM_ID, 0,
			      &codec->subsystem_id);

	err = FUNC5(codec);
	if (err < 0)
		goto error;

	codec->chip_name = FUNC6(GFP_KERNEL, "ID %x",
				     codec->vendor_id & 0xffff);
	if (!codec->chip_name) {
		err = -ENOMEM;
		goto error;
	}

	return 0;

 error:
	FUNC10(&codec->dev);
	return err;
}