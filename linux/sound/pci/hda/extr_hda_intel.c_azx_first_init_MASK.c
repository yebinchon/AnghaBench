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
typedef  int u16 ;
struct snd_card {char* shortname; int /*<<< orphan*/  longname; int /*<<< orphan*/  driver; int /*<<< orphan*/  dev; } ;
struct pci_dev {int no_64bit_msi; scalar_t__ vendor; int revision; int /*<<< orphan*/  dev; } ;
struct hdac_bus {int /*<<< orphan*/  irq; int /*<<< orphan*/  addr; int /*<<< orphan*/  codec_mask; scalar_t__ ppcap; int /*<<< orphan*/ * remap_addr; } ;
struct azx {int dev_index; int driver_type; int region_requested; int gts_present; int driver_caps; int align_buffer_size; unsigned short capture_streams; unsigned short playback_streams; unsigned short playback_index_offset; unsigned short num_streams; struct snd_card* card; scalar_t__ capture_index_offset; struct pci_dev* pci; scalar_t__ msi; } ;

/* Variables and functions */
 unsigned short ATIHDMI_NUM_CAPTURE ; 
 unsigned short ATIHDMI_NUM_PLAYBACK ; 
 int AZX_DCAPS_NO_64BIT ; 
 int AZX_DCAPS_NO_ALIGN_BUFSIZE ; 
 int AZX_DCAPS_NO_MSI64 ; 
 int AZX_DCAPS_SEPARATE_STREAM_TAG ; 
#define  AZX_DRIVER_ATIHDMI 131 
#define  AZX_DRIVER_ATIHDMI_NS 130 
#define  AZX_DRIVER_GENERIC 129 
 int AZX_DRIVER_SKL ; 
#define  AZX_DRIVER_ULI 128 
 unsigned short AZX_GCAP_64OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  GCAP ; 
 unsigned short ICH6_NUM_CAPTURE ; 
 unsigned short ICH6_NUM_PLAYBACK ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_1 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_ATI_SBX00_SMBUS ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ PCI_VENDOR_ID_ATI ; 
 scalar_t__ PCI_VENDOR_ID_NVIDIA ; 
 unsigned short ULI_NUM_CAPTURE ; 
 unsigned short ULI_NUM_PLAYBACK ; 
 int /*<<< orphan*/  X86_FEATURE_ART ; 
 scalar_t__ align_buffer_size ; 
 scalar_t__ FUNC1 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct azx*) ; 
 struct hdac_bus* FUNC3 (struct azx*) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*) ; 
 int FUNC5 (struct azx*) ; 
 unsigned short FUNC6 (struct azx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * driver_short_names ; 
 int /*<<< orphan*/  FUNC13 (struct azx*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 scalar_t__ FUNC15 (struct pci_dev*) ; 
 struct pci_dev* FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int,int*) ; 
 int FUNC19 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int,int) ; 
 int* probe_only ; 
 int /*<<< orphan*/  FUNC24 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC25 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC30(struct azx *chip)
{
	int dev = chip->dev_index;
	struct pci_dev *pci = chip->pci;
	struct snd_card *card = chip->card;
	struct hdac_bus *bus = FUNC3(chip);
	int err;
	unsigned short gcap;
	unsigned int dma_bits = 64;

#if BITS_PER_LONG != 64
	/* Fix up base address on ULI M5461 */
	if (chip->driver_type == AZX_DRIVER_ULI) {
		u16 tmp3;
		FUNC18(pci, 0x40, &tmp3);
		FUNC23(pci, 0x40, tmp3 | 0x10);
		FUNC22(pci, PCI_BASE_ADDRESS_1, 0);
	}
#endif

	err = FUNC19(pci, "ICH HD audio");
	if (err < 0)
		return err;
	chip->region_requested = 1;

	bus->addr = FUNC20(pci, 0);
	bus->remap_addr = FUNC17(pci, 0);
	if (bus->remap_addr == NULL) {
		FUNC9(card->dev, "ioremap error\n");
		return -ENXIO;
	}

	if (chip->driver_type == AZX_DRIVER_SKL)
		FUNC24(bus);

	/*
	 * Some Intel CPUs has always running timer (ART) feature and
	 * controller may have Global time sync reporting capability, so
	 * check both of these before declaring synchronized time reporting
	 * capability SNDRV_PCM_INFO_HAS_LINK_SYNCHRONIZED_ATIME
	 */
	chip->gts_present = false;

#ifdef CONFIG_X86
	if (bus->ppcap && boot_cpu_has(X86_FEATURE_ART))
		chip->gts_present = true;
#endif

	if (chip->msi) {
		if (chip->driver_caps & AZX_DCAPS_NO_MSI64) {
			FUNC8(card->dev, "Disabling 64bit MSI\n");
			pci->no_64bit_msi = true;
		}
		if (FUNC15(pci) < 0)
			chip->msi = 0;
	}

	FUNC21(pci);
	FUNC29(bus->irq);

	gcap = FUNC6(chip, GCAP);
	FUNC8(card->dev, "chipset global capabilities = 0x%x\n", gcap);

	/* AMD devices support 40 or 48bit DMA, take the safe one */
	if (chip->pci->vendor == PCI_VENDOR_ID_AMD)
		dma_bits = 40;

	/* disable SB600 64bit support for safety */
	if (chip->pci->vendor == PCI_VENDOR_ID_ATI) {
		struct pci_dev *p_smbus;
		dma_bits = 40;
		p_smbus = FUNC16(PCI_VENDOR_ID_ATI,
					 PCI_DEVICE_ID_ATI_SBX00_SMBUS,
					 NULL);
		if (p_smbus) {
			if (p_smbus->revision < 0x30)
				gcap &= ~AZX_GCAP_64OK;
			FUNC14(p_smbus);
		}
	}

	/* NVidia hardware normally only supports up to 40 bits of DMA */
	if (chip->pci->vendor == PCI_VENDOR_ID_NVIDIA)
		dma_bits = 40;

	/* disable 64bit DMA address on some devices */
	if (chip->driver_caps & AZX_DCAPS_NO_64BIT) {
		FUNC8(card->dev, "Disabling 64bit DMA\n");
		gcap &= ~AZX_GCAP_64OK;
	}

	/* disable buffer size rounding to 128-byte multiples if supported */
	if (align_buffer_size >= 0)
		chip->align_buffer_size = !!align_buffer_size;
	else {
		if (chip->driver_caps & AZX_DCAPS_NO_ALIGN_BUFSIZE)
			chip->align_buffer_size = 0;
		else
			chip->align_buffer_size = 1;
	}

	/* allow 64bit DMA address if supported by H/W */
	if (!(gcap & AZX_GCAP_64OK))
		dma_bits = 32;
	if (!FUNC12(&pci->dev, FUNC0(dma_bits))) {
		FUNC11(&pci->dev, FUNC0(dma_bits));
	} else {
		FUNC12(&pci->dev, FUNC0(32));
		FUNC11(&pci->dev, FUNC0(32));
	}

	/* read number of streams from GCAP register instead of using
	 * hardcoded value
	 */
	chip->capture_streams = (gcap >> 8) & 0x0f;
	chip->playback_streams = (gcap >> 12) & 0x0f;
	if (!chip->playback_streams && !chip->capture_streams) {
		/* gcap didn't give any info, switching to old method */

		switch (chip->driver_type) {
		case AZX_DRIVER_ULI:
			chip->playback_streams = ULI_NUM_PLAYBACK;
			chip->capture_streams = ULI_NUM_CAPTURE;
			break;
		case AZX_DRIVER_ATIHDMI:
		case AZX_DRIVER_ATIHDMI_NS:
			chip->playback_streams = ATIHDMI_NUM_PLAYBACK;
			chip->capture_streams = ATIHDMI_NUM_CAPTURE;
			break;
		case AZX_DRIVER_GENERIC:
		default:
			chip->playback_streams = ICH6_NUM_PLAYBACK;
			chip->capture_streams = ICH6_NUM_CAPTURE;
			break;
		}
	}
	chip->capture_index_offset = 0;
	chip->playback_index_offset = chip->capture_streams;
	chip->num_streams = chip->playback_streams + chip->capture_streams;

	/* sanity check for the SDxCTL.STRM field overflow */
	if (chip->num_streams > 15 &&
	    (chip->driver_caps & AZX_DCAPS_SEPARATE_STREAM_TAG) == 0) {
		FUNC10(chip->card->dev, "number of I/O streams is %d, "
			 "forcing separate stream tags", chip->num_streams);
		chip->driver_caps |= AZX_DCAPS_SEPARATE_STREAM_TAG;
	}

	/* initialize streams */
	err = FUNC5(chip);
	if (err < 0)
		return err;

	err = FUNC2(chip);
	if (err < 0)
		return err;

	/* initialize chip */
	FUNC4(chip);

	FUNC25(bus);

	FUNC13(chip, (probe_only[dev] & 2) == 0);

	/* codec detection */
	if (!FUNC3(chip)->codec_mask) {
		FUNC9(card->dev, "no codecs found!\n");
		return -ENODEV;
	}

	if (FUNC1(chip, 0) < 0)
		return -EBUSY;

	FUNC27(card->driver, "HDA-Intel");
	FUNC28(card->shortname, driver_short_names[chip->driver_type],
		sizeof(card->shortname));
	FUNC26(card->longname, sizeof(card->longname),
		 "%s at 0x%lx irq %i",
		 card->shortname, bus->addr, bus->irq);

	return 0;
}