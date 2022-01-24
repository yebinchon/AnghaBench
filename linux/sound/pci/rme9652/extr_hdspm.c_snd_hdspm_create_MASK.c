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
struct snd_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  driver; int /*<<< orphan*/  mixername; } ;
struct pci_dev {int irq; } ;
struct hdspm {int irq; int firmware_rev; int io_type; char* card_name; int midiPorts; int ss_in_channels; int ss_out_channels; int ds_in_channels; int ds_out_channels; int qs_in_channels; int qs_out_channels; int texts_autosync_items; int serial; size_t dev; int /*<<< orphan*/  midi_tasklet; void* texts_autosync; int /*<<< orphan*/ * tco; void* port_names_out_qs; void* port_names_in_qs; void* port_names_out_ds; void* port_names_in_ds; void* port_names_out_ss; void* port_names_in_ss; void* channel_map_out; void* channel_map_in; void* channel_map_out_qs; void* channel_map_in_qs; void* channel_map_out_ds; void* channel_map_in_ds; void* channel_map_out_ss; void* channel_map_in_ss; void* max_channels_out; void* max_channels_in; int /*<<< orphan*/ * port_names_out; int /*<<< orphan*/ * port_names_in; void* mixer; scalar_t__ port; scalar_t__ iobase; struct pci_dev* pci; int /*<<< orphan*/  lock; struct snd_card* card; } ;

/* Variables and functions */
#define  AES32 135 
 void* AES32_CHANNELS ; 
#define  AIO 134 
 int AIO_IN_DS_CHANNELS ; 
 int AIO_IN_QS_CHANNELS ; 
 int AIO_IN_SS_CHANNELS ; 
 int AIO_OUT_DS_CHANNELS ; 
 int AIO_OUT_QS_CHANNELS ; 
 int AIO_OUT_SS_CHANNELS ; 
 void* FUNC0 (void*) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HDSPM_AIO_REV 133 
#define  HDSPM_MADIFACE_REV 132 
#define  HDSPM_RAYDAT_REV 131 
 int /*<<< orphan*/  HDSPM_midiStatusIn0 ; 
 int HDSPM_s2_AEBI_D ; 
 int HDSPM_s2_AEBO_D ; 
 int HDSPM_s2_tco_detect ; 
 int /*<<< orphan*/  HDSPM_statusRegister ; 
 int /*<<< orphan*/  HDSPM_statusRegister2 ; 
 int HDSPM_tco_detect ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
#define  MADI 130 
 int MADI_DS_CHANNELS ; 
 int MADI_QS_CHANNELS ; 
 int MADI_SS_CHANNELS ; 
#define  MADIface 129 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int RAYDAT_DS_CHANNELS ; 
 int RAYDAT_QS_CHANNELS ; 
 void* RAYDAT_SS_CHANNELS ; 
#define  RayDAT 128 
 void* channel_map_aes32 ; 
 void* channel_map_aio_in_ds ; 
 void* channel_map_aio_in_qs ; 
 void* channel_map_aio_in_ss ; 
 void* channel_map_aio_out_ds ; 
 void* channel_map_aio_out_qs ; 
 void* channel_map_aio_out_ss ; 
 void* channel_map_raydat_ds ; 
 void* channel_map_raydat_qs ; 
 void* channel_map_raydat_ss ; 
 void* channel_map_unity_ss ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hdspm_midi_tasklet ; 
 int FUNC4 (struct hdspm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdspm*) ; 
 int /*<<< orphan*/ * id ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned long) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct pci_dev*,char*) ; 
 unsigned long FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hdspm*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct snd_card*,struct hdspm*) ; 
 int /*<<< orphan*/  FUNC17 (struct hdspm*) ; 
 int /*<<< orphan*/  snd_hdspm_interrupt ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 void* texts_autosync_aes ; 
 void* texts_autosync_aes_tco ; 
 void* texts_autosync_aio ; 
 void* texts_autosync_aio_tco ; 
 void* texts_autosync_madi ; 
 void* texts_autosync_madi_tco ; 
 void* texts_autosync_raydat ; 
 void* texts_autosync_raydat_tco ; 
 void* texts_ports_aes32 ; 
 void* texts_ports_aio_in_ds ; 
 void* texts_ports_aio_in_qs ; 
 void* texts_ports_aio_in_ss ; 
 void* texts_ports_aio_out_ds ; 
 void* texts_ports_aio_out_qs ; 
 void* texts_ports_aio_out_ss ; 
 void* texts_ports_madi ; 
 void* texts_ports_raydat_ds ; 
 void* texts_ports_raydat_qs ; 
 void* texts_ports_raydat_ss ; 

__attribute__((used)) static int FUNC22(struct snd_card *card,
			    struct hdspm *hdspm)
{

	struct pci_dev *pci = hdspm->pci;
	int err;
	unsigned long io_extent;

	hdspm->irq = -1;
	hdspm->card = card;

	FUNC19(&hdspm->lock);

	FUNC9(hdspm->pci,
			PCI_CLASS_REVISION, &hdspm->firmware_rev);

	FUNC20(card->mixername, "Xilinx FPGA");
	FUNC20(card->driver, "HDSPM");

	switch (hdspm->firmware_rev) {
	case HDSPM_RAYDAT_REV:
		hdspm->io_type = RayDAT;
		hdspm->card_name = "RME RayDAT";
		hdspm->midiPorts = 2;
		break;
	case HDSPM_AIO_REV:
		hdspm->io_type = AIO;
		hdspm->card_name = "RME AIO";
		hdspm->midiPorts = 1;
		break;
	case HDSPM_MADIFACE_REV:
		hdspm->io_type = MADIface;
		hdspm->card_name = "RME MADIface";
		hdspm->midiPorts = 1;
		break;
	default:
		if ((hdspm->firmware_rev == 0xf0) ||
			((hdspm->firmware_rev >= 0xe6) &&
					(hdspm->firmware_rev <= 0xea))) {
			hdspm->io_type = AES32;
			hdspm->card_name = "RME AES32";
			hdspm->midiPorts = 2;
		} else if ((hdspm->firmware_rev == 0xd2) ||
			((hdspm->firmware_rev >= 0xc8)  &&
				(hdspm->firmware_rev <= 0xcf))) {
			hdspm->io_type = MADI;
			hdspm->card_name = "RME MADI";
			hdspm->midiPorts = 3;
		} else {
			FUNC2(card->dev,
				"unknown firmware revision %x\n",
				hdspm->firmware_rev);
			return -ENODEV;
		}
	}

	err = FUNC8(pci);
	if (err < 0)
		return err;

	FUNC13(hdspm->pci);

	err = FUNC10(pci, "hdspm");
	if (err < 0)
		return err;

	hdspm->port = FUNC12(pci, 0);
	io_extent = FUNC11(pci, 0);

	FUNC1(card->dev, "grabbed memory region 0x%lx-0x%lx\n",
			hdspm->port, hdspm->port + io_extent - 1);

	hdspm->iobase = FUNC6(hdspm->port, io_extent);
	if (!hdspm->iobase) {
		FUNC2(card->dev, "unable to remap region 0x%lx-0x%lx\n",
				hdspm->port, hdspm->port + io_extent - 1);
		return -EBUSY;
	}
	FUNC1(card->dev, "remapped region (0x%lx) 0x%lx-0x%lx\n",
			(unsigned long)hdspm->iobase, hdspm->port,
			hdspm->port + io_extent - 1);

	if (FUNC14(pci->irq, snd_hdspm_interrupt,
			IRQF_SHARED, KBUILD_MODNAME, hdspm)) {
		FUNC2(card->dev, "unable to use IRQ %d\n", pci->irq);
		return -EBUSY;
	}

	FUNC1(card->dev, "use IRQ %d\n", pci->irq);

	hdspm->irq = pci->irq;

	FUNC1(card->dev, "kmalloc Mixer memory of %zd Bytes\n",
		sizeof(*hdspm->mixer));
	hdspm->mixer = FUNC7(sizeof(*hdspm->mixer), GFP_KERNEL);
	if (!hdspm->mixer)
		return -ENOMEM;

	hdspm->port_names_in = NULL;
	hdspm->port_names_out = NULL;

	switch (hdspm->io_type) {
	case AES32:
		hdspm->ss_in_channels = hdspm->ss_out_channels = AES32_CHANNELS;
		hdspm->ds_in_channels = hdspm->ds_out_channels = AES32_CHANNELS;
		hdspm->qs_in_channels = hdspm->qs_out_channels = AES32_CHANNELS;

		hdspm->channel_map_in_ss = hdspm->channel_map_out_ss =
			channel_map_aes32;
		hdspm->channel_map_in_ds = hdspm->channel_map_out_ds =
			channel_map_aes32;
		hdspm->channel_map_in_qs = hdspm->channel_map_out_qs =
			channel_map_aes32;
		hdspm->port_names_in_ss = hdspm->port_names_out_ss =
			texts_ports_aes32;
		hdspm->port_names_in_ds = hdspm->port_names_out_ds =
			texts_ports_aes32;
		hdspm->port_names_in_qs = hdspm->port_names_out_qs =
			texts_ports_aes32;

		hdspm->max_channels_out = hdspm->max_channels_in =
			AES32_CHANNELS;
		hdspm->port_names_in = hdspm->port_names_out =
			texts_ports_aes32;
		hdspm->channel_map_in = hdspm->channel_map_out =
			channel_map_aes32;

		break;

	case MADI:
	case MADIface:
		hdspm->ss_in_channels = hdspm->ss_out_channels =
			MADI_SS_CHANNELS;
		hdspm->ds_in_channels = hdspm->ds_out_channels =
			MADI_DS_CHANNELS;
		hdspm->qs_in_channels = hdspm->qs_out_channels =
			MADI_QS_CHANNELS;

		hdspm->channel_map_in_ss = hdspm->channel_map_out_ss =
			channel_map_unity_ss;
		hdspm->channel_map_in_ds = hdspm->channel_map_out_ds =
			channel_map_unity_ss;
		hdspm->channel_map_in_qs = hdspm->channel_map_out_qs =
			channel_map_unity_ss;

		hdspm->port_names_in_ss = hdspm->port_names_out_ss =
			texts_ports_madi;
		hdspm->port_names_in_ds = hdspm->port_names_out_ds =
			texts_ports_madi;
		hdspm->port_names_in_qs = hdspm->port_names_out_qs =
			texts_ports_madi;
		break;

	case AIO:
		hdspm->ss_in_channels = AIO_IN_SS_CHANNELS;
		hdspm->ds_in_channels = AIO_IN_DS_CHANNELS;
		hdspm->qs_in_channels = AIO_IN_QS_CHANNELS;
		hdspm->ss_out_channels = AIO_OUT_SS_CHANNELS;
		hdspm->ds_out_channels = AIO_OUT_DS_CHANNELS;
		hdspm->qs_out_channels = AIO_OUT_QS_CHANNELS;

		if (0 == (FUNC4(hdspm, HDSPM_statusRegister2) & HDSPM_s2_AEBI_D)) {
			FUNC3(card->dev, "AEB input board found\n");
			hdspm->ss_in_channels += 4;
			hdspm->ds_in_channels += 4;
			hdspm->qs_in_channels += 4;
		}

		if (0 == (FUNC4(hdspm, HDSPM_statusRegister2) & HDSPM_s2_AEBO_D)) {
			FUNC3(card->dev, "AEB output board found\n");
			hdspm->ss_out_channels += 4;
			hdspm->ds_out_channels += 4;
			hdspm->qs_out_channels += 4;
		}

		hdspm->channel_map_out_ss = channel_map_aio_out_ss;
		hdspm->channel_map_out_ds = channel_map_aio_out_ds;
		hdspm->channel_map_out_qs = channel_map_aio_out_qs;

		hdspm->channel_map_in_ss = channel_map_aio_in_ss;
		hdspm->channel_map_in_ds = channel_map_aio_in_ds;
		hdspm->channel_map_in_qs = channel_map_aio_in_qs;

		hdspm->port_names_in_ss = texts_ports_aio_in_ss;
		hdspm->port_names_out_ss = texts_ports_aio_out_ss;
		hdspm->port_names_in_ds = texts_ports_aio_in_ds;
		hdspm->port_names_out_ds = texts_ports_aio_out_ds;
		hdspm->port_names_in_qs = texts_ports_aio_in_qs;
		hdspm->port_names_out_qs = texts_ports_aio_out_qs;

		break;

	case RayDAT:
		hdspm->ss_in_channels = hdspm->ss_out_channels =
			RAYDAT_SS_CHANNELS;
		hdspm->ds_in_channels = hdspm->ds_out_channels =
			RAYDAT_DS_CHANNELS;
		hdspm->qs_in_channels = hdspm->qs_out_channels =
			RAYDAT_QS_CHANNELS;

		hdspm->max_channels_in = RAYDAT_SS_CHANNELS;
		hdspm->max_channels_out = RAYDAT_SS_CHANNELS;

		hdspm->channel_map_in_ss = hdspm->channel_map_out_ss =
			channel_map_raydat_ss;
		hdspm->channel_map_in_ds = hdspm->channel_map_out_ds =
			channel_map_raydat_ds;
		hdspm->channel_map_in_qs = hdspm->channel_map_out_qs =
			channel_map_raydat_qs;
		hdspm->channel_map_in = hdspm->channel_map_out =
			channel_map_raydat_ss;

		hdspm->port_names_in_ss = hdspm->port_names_out_ss =
			texts_ports_raydat_ss;
		hdspm->port_names_in_ds = hdspm->port_names_out_ds =
			texts_ports_raydat_ds;
		hdspm->port_names_in_qs = hdspm->port_names_out_qs =
			texts_ports_raydat_qs;


		break;

	}

	/* TCO detection */
	switch (hdspm->io_type) {
	case AIO:
	case RayDAT:
		if (FUNC4(hdspm, HDSPM_statusRegister2) &
				HDSPM_s2_tco_detect) {
			hdspm->midiPorts++;
			hdspm->tco = FUNC7(sizeof(*hdspm->tco), GFP_KERNEL);
			if (hdspm->tco)
				FUNC5(hdspm);

			FUNC3(card->dev, "AIO/RayDAT TCO module found\n");
		} else {
			hdspm->tco = NULL;
		}
		break;

	case MADI:
	case AES32:
		if (FUNC4(hdspm, HDSPM_statusRegister) & HDSPM_tco_detect) {
			hdspm->midiPorts++;
			hdspm->tco = FUNC7(sizeof(*hdspm->tco), GFP_KERNEL);
			if (hdspm->tco)
				FUNC5(hdspm);

			FUNC3(card->dev, "MADI/AES TCO module found\n");
		} else {
			hdspm->tco = NULL;
		}
		break;

	default:
		hdspm->tco = NULL;
	}

	/* texts */
	switch (hdspm->io_type) {
	case AES32:
		if (hdspm->tco) {
			hdspm->texts_autosync = texts_autosync_aes_tco;
			hdspm->texts_autosync_items =
				FUNC0(texts_autosync_aes_tco);
		} else {
			hdspm->texts_autosync = texts_autosync_aes;
			hdspm->texts_autosync_items =
				FUNC0(texts_autosync_aes);
		}
		break;

	case MADI:
		if (hdspm->tco) {
			hdspm->texts_autosync = texts_autosync_madi_tco;
			hdspm->texts_autosync_items = 4;
		} else {
			hdspm->texts_autosync = texts_autosync_madi;
			hdspm->texts_autosync_items = 3;
		}
		break;

	case MADIface:

		break;

	case RayDAT:
		if (hdspm->tco) {
			hdspm->texts_autosync = texts_autosync_raydat_tco;
			hdspm->texts_autosync_items = 9;
		} else {
			hdspm->texts_autosync = texts_autosync_raydat;
			hdspm->texts_autosync_items = 8;
		}
		break;

	case AIO:
		if (hdspm->tco) {
			hdspm->texts_autosync = texts_autosync_aio_tco;
			hdspm->texts_autosync_items = 6;
		} else {
			hdspm->texts_autosync = texts_autosync_aio;
			hdspm->texts_autosync_items = 5;
		}
		break;

	}

	FUNC21(&hdspm->midi_tasklet,
			hdspm_midi_tasklet, (unsigned long) hdspm);


	if (hdspm->io_type != MADIface) {
		hdspm->serial = (FUNC4(hdspm,
				HDSPM_midiStatusIn0)>>8) & 0xFFFFFF;
		/* id contains either a user-provided value or the default
		 * NULL. If it's the default, we're safe to
		 * fill card->id with the serial number.
		 *
		 * If the serial number is 0xFFFFFF, then we're dealing with
		 * an old PCI revision that comes without a sane number. In
		 * this case, we don't set card->id to avoid collisions
		 * when running with multiple cards.
		 */
		if (!id[hdspm->dev] && hdspm->serial != 0xFFFFFF) {
			FUNC18(card->id, sizeof(card->id),
				 "HDSPMx%06x", hdspm->serial);
			FUNC15(card, card->id);
		}
	}

	FUNC1(card->dev, "create alsa devices.\n");
	err = FUNC16(card, hdspm);
	if (err < 0)
		return err;

	FUNC17(hdspm);

	return 0;
}