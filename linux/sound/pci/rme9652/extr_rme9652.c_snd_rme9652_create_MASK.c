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
struct snd_rme9652 {int irq; int precise_ptr; int hw_rev; char* card_name; int ss_channels; int ds_channels; int last_spdif_sample_rate; int last_adat_sample_rate; int playback_pid; int capture_pid; int /*<<< orphan*/ * playback_substream; int /*<<< orphan*/ * capture_substream; struct pci_dev* pci; scalar_t__ port; int /*<<< orphan*/ * iobase; int /*<<< orphan*/  lock; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  driver; int /*<<< orphan*/  dev; } ;
struct pci_dev {int irq; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 void* RME9636_NCHANNELS ; 
 int RME9652_F ; 
 scalar_t__ RME9652_IO_EXTENT ; 
 void* RME9652_NCHANNELS ; 
 int /*<<< orphan*/  RME9652_status_register ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short*) ; 
 int FUNC4 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_rme9652*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_rme9652*) ; 
 int FUNC10 (struct snd_rme9652*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct snd_card*,struct snd_rme9652*) ; 
 int FUNC12 (struct snd_card*,struct snd_rme9652*) ; 
 int FUNC13 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  snd_rme9652_interrupt ; 
 int /*<<< orphan*/  FUNC14 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC18(struct snd_card *card,
			      struct snd_rme9652 *rme9652,
			      int precise_ptr)
{
	struct pci_dev *pci = rme9652->pci;
	int err;
	int status;
	unsigned short rev;

	rme9652->irq = -1;
	rme9652->card = card;

	FUNC3(rme9652->pci, PCI_CLASS_REVISION, &rev);

	switch (rev & 0xff) {
	case 3:
	case 4:
	case 8:
	case 9:
		break;

	default:
		/* who knows? */
		return -ENODEV;
	}

	if ((err = FUNC2(pci)) < 0)
		return err;

	FUNC16(&rme9652->lock);

	if ((err = FUNC4(pci, "rme9652")) < 0)
		return err;
	rme9652->port = FUNC5(pci, 0);
	rme9652->iobase = FUNC1(rme9652->port, RME9652_IO_EXTENT);
	if (rme9652->iobase == NULL) {
		FUNC0(card->dev, "unable to remap region 0x%lx-0x%lx\n",
			rme9652->port, rme9652->port + RME9652_IO_EXTENT - 1);
		return -EBUSY;
	}
	
	if (FUNC7(pci->irq, snd_rme9652_interrupt, IRQF_SHARED,
			KBUILD_MODNAME, rme9652)) {
		FUNC0(card->dev, "unable to request IRQ %d\n", pci->irq);
		return -EBUSY;
	}
	rme9652->irq = pci->irq;
	rme9652->precise_ptr = precise_ptr;

	/* Determine the h/w rev level of the card. This seems like
	   a particularly kludgy way to encode it, but its what RME
	   chose to do, so we follow them ...
	*/

	status = FUNC10(rme9652, RME9652_status_register);
	if (FUNC8(status&RME9652_F) == 1) {
		rme9652->hw_rev = 15;
	} else {
		rme9652->hw_rev = 11;
	}

	/* Differentiate between the standard Hammerfall, and the
	   "Light", which does not have the expansion board. This
	   method comes from information received from Mathhias
	   Clausen at RME. Display the EEPROM and h/w revID where
	   relevant.  
	*/

	switch (rev) {
	case 8: /* original eprom */
		FUNC17(card->driver, "RME9636");
		if (rme9652->hw_rev == 15) {
			rme9652->card_name = "RME Digi9636 (Rev 1.5)";
		} else {
			rme9652->card_name = "RME Digi9636";
		}
		rme9652->ss_channels = RME9636_NCHANNELS;
		break;
	case 9: /* W36_G EPROM */
		FUNC17(card->driver, "RME9636");
		rme9652->card_name = "RME Digi9636 (Rev G)";
		rme9652->ss_channels = RME9636_NCHANNELS;
		break;
	case 4: /* W52_G EPROM */
		FUNC17(card->driver, "RME9652");
		rme9652->card_name = "RME Digi9652 (Rev G)";
		rme9652->ss_channels = RME9652_NCHANNELS;
		break;
	case 3: /* original eprom */
		FUNC17(card->driver, "RME9652");
		if (rme9652->hw_rev == 15) {
			rme9652->card_name = "RME Digi9652 (Rev 1.5)";
		} else {
			rme9652->card_name = "RME Digi9652";
		}
		rme9652->ss_channels = RME9652_NCHANNELS;
		break;
	}

	rme9652->ds_channels = (rme9652->ss_channels - 2) / 2 + 2;

	FUNC6(rme9652->pci);

	if ((err = FUNC13(rme9652)) < 0) {
		return err;
	}

	if ((err = FUNC12(card, rme9652)) < 0) {
		return err;
	}

	if ((err = FUNC11(card, rme9652)) < 0) {
		return err;
	}

	FUNC14(rme9652);

	rme9652->last_spdif_sample_rate = -1;
	rme9652->last_adat_sample_rate = -1;
	rme9652->playback_pid = -1;
	rme9652->capture_pid = -1;
	rme9652->capture_substream = NULL;
	rme9652->playback_substream = NULL;

	FUNC15(rme9652);

	if (rme9652->hw_rev == 15) {
		FUNC9 (rme9652);
	}

	return 0;
}