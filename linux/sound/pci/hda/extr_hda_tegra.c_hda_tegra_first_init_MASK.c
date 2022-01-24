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
struct snd_card {char* driver; char* shortname; int /*<<< orphan*/  longname; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdac_bus {int irq; int /*<<< orphan*/  addr; int /*<<< orphan*/  codec_mask; } ;
struct device_node {int dummy; } ;
struct azx {unsigned short capture_streams; unsigned short playback_streams; unsigned short playback_index_offset; unsigned short num_streams; scalar_t__ capture_index_offset; struct snd_card* card; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GCAP ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 unsigned short NUM_CAPTURE_SD ; 
 unsigned short NUM_PLAYBACK_SD ; 
 int FUNC0 (struct azx*) ; 
 struct hdac_bus* FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int) ; 
 int FUNC3 (struct azx*) ; 
 int /*<<< orphan*/  azx_interrupt ; 
 unsigned short FUNC4 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct azx*) ; 
 int FUNC9 (struct azx*,struct platform_device*) ; 
 char* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct azx *chip, struct platform_device *pdev)
{
	struct hdac_bus *bus = FUNC1(chip);
	struct snd_card *card = chip->card;
	int err;
	unsigned short gcap;
	int irq_id = FUNC11(pdev, 0);
	const char *sname, *drv_name = "tegra-hda";
	struct device_node *np = pdev->dev.of_node;

	err = FUNC9(chip, pdev);
	if (err)
		return err;

	err = FUNC8(chip->card->dev, irq_id, azx_interrupt,
			     IRQF_SHARED, KBUILD_MODNAME, chip);
	if (err) {
		FUNC6(chip->card->dev,
			"unable to request IRQ %d, disabling device\n",
			irq_id);
		return err;
	}
	bus->irq = irq_id;

	FUNC15(bus->irq);

	gcap = FUNC4(chip, GCAP);
	FUNC5(card->dev, "chipset global capabilities = 0x%x\n", gcap);

	/* read number of streams from GCAP register instead of using
	 * hardcoded value
	 */
	chip->capture_streams = (gcap >> 8) & 0x0f;
	chip->playback_streams = (gcap >> 12) & 0x0f;
	if (!chip->playback_streams && !chip->capture_streams) {
		/* gcap didn't give any info, switching to old method */
		chip->playback_streams = NUM_PLAYBACK_SD;
		chip->capture_streams = NUM_CAPTURE_SD;
	}
	chip->capture_index_offset = 0;
	chip->playback_index_offset = chip->capture_streams;
	chip->num_streams = chip->playback_streams + chip->capture_streams;

	/* initialize streams */
	err = FUNC3(chip);
	if (err < 0) {
		FUNC6(card->dev, "failed to initialize streams: %d\n", err);
		return err;
	}

	err = FUNC0(chip);
	if (err < 0) {
		FUNC6(card->dev, "failed to allocate stream pages: %d\n",
			err);
		return err;
	}

	/* initialize chip */
	FUNC2(chip, 1);

	/* codec detection */
	if (!bus->codec_mask) {
		FUNC6(card->dev, "no codecs found!\n");
		return -ENODEV;
	}

	/* driver name */
	FUNC14(card->driver, drv_name, sizeof(card->driver));
	/* shortname for card */
	sname = FUNC10(np, "nvidia,model", NULL);
	if (!sname)
		sname = drv_name;
	if (FUNC13(sname) > sizeof(card->shortname))
		FUNC7(card->dev, "truncating shortname for card\n");
	FUNC14(card->shortname, sname, sizeof(card->shortname));

	/* longname for card */
	FUNC12(card->longname, sizeof(card->longname),
		 "%s at 0x%lx irq %i",
		 card->shortname, bus->addr, bus->irq);

	return 0;
}