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
struct skl_dev {struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;
struct hdac_bus {int num_streams; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  ppcap; int /*<<< orphan*/ * remap_addr; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  GCAP ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 struct skl_dev* FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 scalar_t__ FUNC10 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hdac_bus*) ; 
 int FUNC12 (struct hdac_bus*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct skl_dev*) ; 
 int FUNC14 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC15 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC16 (struct hdac_bus*,int) ; 
 unsigned short FUNC17 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hdac_bus*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct hdac_bus *bus)
{
	struct skl_dev *skl = FUNC1(bus);
	struct pci_dev *pci = skl->pci;
	int err;
	unsigned short gcap;
	int cp_streams, pb_streams, start_idx;

	err = FUNC7(pci, "Skylake HD audio");
	if (err < 0)
		return err;

	bus->addr = FUNC8(pci, 0);
	bus->remap_addr = FUNC6(pci, 0);
	if (bus->remap_addr == NULL) {
		FUNC3(bus->dev, "ioremap error\n");
		return -ENXIO;
	}

	FUNC16(bus, true);

	FUNC15(bus);

	/* check if PPCAP exists */
	if (!bus->ppcap) {
		FUNC3(bus->dev, "bus ppcap not set, HDaudio or DSP not present?\n");
		return -ENODEV;
	}

	if (FUNC10(bus, 0) < 0)
		return -EBUSY;

	FUNC9(pci);
	FUNC19(bus->irq);

	gcap = FUNC17(bus, GCAP);
	FUNC2(bus->dev, "chipset global capabilities = 0x%x\n", gcap);

	/* read number of streams from GCAP register */
	cp_streams = (gcap >> 8) & 0x0f;
	pb_streams = (gcap >> 12) & 0x0f;

	if (!pb_streams && !cp_streams) {
		FUNC3(bus->dev, "no streams found in GCAP definitions?\n");
		return -EIO;
	}

	bus->num_streams = cp_streams + pb_streams;

	/* allow 64bit DMA address if supported by H/W */
	if (!FUNC5(bus->dev, FUNC0(64))) {
		FUNC4(bus->dev, FUNC0(64));
	} else {
		FUNC5(bus->dev, FUNC0(32));
		FUNC4(bus->dev, FUNC0(32));
	}

	/* initialize streams */
	FUNC18
		(bus, 0, cp_streams, SNDRV_PCM_STREAM_CAPTURE);
	start_idx = cp_streams;
	FUNC18
		(bus, start_idx, pb_streams, SNDRV_PCM_STREAM_PLAYBACK);

	err = FUNC14(bus);
	if (err < 0)
		return err;

	/* initialize chip */
	FUNC13(skl);
	FUNC11(bus);

	return FUNC12(bus, true);
}