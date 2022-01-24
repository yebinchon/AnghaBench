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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct usb_host_interface {int /*<<< orphan*/  extralen; int /*<<< orphan*/  extra; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct uac3_output_terminal_descriptor {int bCSourceID; } ;
struct uac3_input_terminal_descriptor {int bCSourceID; } ;
struct uac3_hc_descriptor_header {unsigned int channels; unsigned int bNrChannels; int /*<<< orphan*/  pd_d2d0_rec; int /*<<< orphan*/  pd_d1d0_rec; int /*<<< orphan*/  pd_id; int /*<<< orphan*/  wLength; int /*<<< orphan*/ * map; } ;
struct uac3_cluster_header_descriptor {unsigned int channels; unsigned int bNrChannels; int /*<<< orphan*/  pd_d2d0_rec; int /*<<< orphan*/  pd_d1d0_rec; int /*<<< orphan*/  pd_id; int /*<<< orphan*/  wLength; int /*<<< orphan*/ * map; } ;
struct uac3_as_header_descriptor {int bLength; int /*<<< orphan*/  bTerminalLink; int /*<<< orphan*/  wClusterDescrID; } ;
struct snd_usb_power_domain {unsigned int channels; unsigned int bNrChannels; int /*<<< orphan*/  pd_d2d0_rec; int /*<<< orphan*/  pd_d1d0_rec; int /*<<< orphan*/  pd_id; int /*<<< orphan*/  wLength; int /*<<< orphan*/ * map; } ;
struct snd_usb_audio {unsigned char badd_profile; int /*<<< orphan*/  ctrl_intf; struct usb_device* dev; } ;
struct snd_pcm_chmap_elem {unsigned int channels; unsigned int bNrChannels; int /*<<< orphan*/  pd_d2d0_rec; int /*<<< orphan*/  pd_d1d0_rec; int /*<<< orphan*/  pd_id; int /*<<< orphan*/  wLength; int /*<<< orphan*/ * map; } ;
struct audioformat {scalar_t__ attributes; int /*<<< orphan*/  rates; void* rate_max; void* rate_min; scalar_t__ nr_rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  fmt_type; struct uac3_hc_descriptor_header* chmap; } ;
typedef  int /*<<< orphan*/  hc_header ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct audioformat* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_CHMAP_FL ; 
 int /*<<< orphan*/  SNDRV_CHMAP_FR ; 
 int /*<<< orphan*/  SNDRV_CHMAP_MONO ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_S16_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_S24_3LE ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_CONTINUOUS ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int UAC3_BADD_CS_ID9 ; 
#define  UAC3_BADD_EP_MAXPSIZE_ASYNC_MONO_16 135 
#define  UAC3_BADD_EP_MAXPSIZE_ASYNC_MONO_24 134 
#define  UAC3_BADD_EP_MAXPSIZE_ASYNC_STEREO_16 133 
#define  UAC3_BADD_EP_MAXPSIZE_ASYNC_STEREO_24 132 
#define  UAC3_BADD_EP_MAXPSIZE_SYNC_MONO_16 131 
#define  UAC3_BADD_EP_MAXPSIZE_SYNC_MONO_24 130 
#define  UAC3_BADD_EP_MAXPSIZE_SYNC_STEREO_16 129 
#define  UAC3_BADD_EP_MAXPSIZE_SYNC_STEREO_24 128 
 int /*<<< orphan*/  UAC3_BADD_PD_ID10 ; 
 int /*<<< orphan*/  UAC3_BADD_PD_ID11 ; 
 int /*<<< orphan*/  UAC3_BADD_PD_RECOVER_D1D0 ; 
 int /*<<< orphan*/  UAC3_BADD_PD_RECOVER_D2D0 ; 
 void* UAC3_BADD_SAMPLING_RATE ; 
 int /*<<< orphan*/  UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR ; 
 unsigned char UAC3_FUNCTION_SUBCLASS_GENERIC_IO ; 
 int /*<<< orphan*/  UAC_AS_GENERAL ; 
 int /*<<< orphan*/  UAC_FORMAT_TYPE_I ; 
 int /*<<< orphan*/  UAC_VERSION_3 ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 struct audioformat* FUNC1 (struct snd_usb_audio*,struct usb_host_interface*,int /*<<< orphan*/ ,int,int,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct audioformat*) ; 
 struct uac3_hc_descriptor_header* FUNC3 (struct uac3_hc_descriptor_header*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 TYPE_1__* FUNC5 (struct usb_host_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uac3_hc_descriptor_header*) ; 
 struct uac3_hc_descriptor_header* FUNC7 (int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct snd_usb_audio*,struct usb_host_interface*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct uac3_hc_descriptor_header*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_usb_audio*) ; 
 struct uac3_as_header_descriptor* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct uac3_input_terminal_descriptor* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uac3_output_terminal_descriptor* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uac3_hc_descriptor_header* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct snd_usb_audio*,struct audioformat*,struct uac3_as_header_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct audioformat *
FUNC18(struct snd_usb_audio *chip,
			     struct usb_host_interface *alts,
			     struct snd_usb_power_domain **pd_out,
			     int iface_no, int altset_idx,
			     int altno, int stream)
{
	struct usb_device *dev = chip->dev;
	struct uac3_input_terminal_descriptor *input_term;
	struct uac3_output_terminal_descriptor *output_term;
	struct uac3_cluster_header_descriptor *cluster;
	struct uac3_as_header_descriptor *as = NULL;
	struct uac3_hc_descriptor_header hc_header;
	struct snd_pcm_chmap_elem *chmap;
	struct snd_usb_power_domain *pd;
	unsigned char badd_profile;
	u64 badd_formats = 0;
	unsigned int num_channels;
	struct audioformat *fp;
	u16 cluster_id, wLength;
	int clock = 0;
	int err;

	badd_profile = chip->badd_profile;

	if (badd_profile >= UAC3_FUNCTION_SUBCLASS_GENERIC_IO) {
		unsigned int maxpacksize =
			FUNC8(FUNC5(alts, 0)->wMaxPacketSize);

		switch (maxpacksize) {
		default:
			FUNC4(&dev->dev,
				"%u:%d : incorrect wMaxPacketSize for BADD profile\n",
				iface_no, altno);
			return NULL;
		case UAC3_BADD_EP_MAXPSIZE_SYNC_MONO_16:
		case UAC3_BADD_EP_MAXPSIZE_ASYNC_MONO_16:
			badd_formats = SNDRV_PCM_FMTBIT_S16_LE;
			num_channels = 1;
			break;
		case UAC3_BADD_EP_MAXPSIZE_SYNC_MONO_24:
		case UAC3_BADD_EP_MAXPSIZE_ASYNC_MONO_24:
			badd_formats = SNDRV_PCM_FMTBIT_S24_3LE;
			num_channels = 1;
			break;
		case UAC3_BADD_EP_MAXPSIZE_SYNC_STEREO_16:
		case UAC3_BADD_EP_MAXPSIZE_ASYNC_STEREO_16:
			badd_formats = SNDRV_PCM_FMTBIT_S16_LE;
			num_channels = 2;
			break;
		case UAC3_BADD_EP_MAXPSIZE_SYNC_STEREO_24:
		case UAC3_BADD_EP_MAXPSIZE_ASYNC_STEREO_24:
			badd_formats = SNDRV_PCM_FMTBIT_S24_3LE;
			num_channels = 2;
			break;
		}

		chmap = FUNC7(sizeof(*chmap), GFP_KERNEL);
		if (!chmap)
			return FUNC0(-ENOMEM);

		if (num_channels == 1) {
			chmap->map[0] = SNDRV_CHMAP_MONO;
		} else {
			chmap->map[0] = SNDRV_CHMAP_FL;
			chmap->map[1] = SNDRV_CHMAP_FR;
		}

		chmap->channels = num_channels;
		clock = UAC3_BADD_CS_ID9;
		goto found_clock;
	}

	as = FUNC12(alts->extra, alts->extralen,
				     NULL, UAC_AS_GENERAL);
	if (!as) {
		FUNC4(&dev->dev,
			"%u:%d : UAC_AS_GENERAL descriptor not found\n",
			iface_no, altno);
		return NULL;
	}

	if (as->bLength < sizeof(*as)) {
		FUNC4(&dev->dev,
			"%u:%d : invalid UAC_AS_GENERAL desc\n",
			iface_no, altno);
		return NULL;
	}

	cluster_id = FUNC8(as->wClusterDescrID);
	if (!cluster_id) {
		FUNC4(&dev->dev,
			"%u:%d : no cluster descriptor\n",
			iface_no, altno);
		return NULL;
	}

	/*
	 * Get number of channels and channel map through
	 * High Capability Cluster Descriptor
	 *
	 * First step: get High Capability header and
	 * read size of Cluster Descriptor
	 */
	err = FUNC10(chip->dev,
			FUNC17(chip->dev, 0),
			UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR,
			USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
			cluster_id,
			FUNC11(chip),
			&hc_header, sizeof(hc_header));
	if (err < 0)
		return FUNC0(err);
	else if (err != sizeof(hc_header)) {
		FUNC4(&dev->dev,
			"%u:%d : can't get High Capability descriptor\n",
			iface_no, altno);
		return FUNC0(-EIO);
	}

	/*
	 * Second step: allocate needed amount of memory
	 * and request Cluster Descriptor
	 */
	wLength = FUNC8(hc_header.wLength);
	cluster = FUNC7(wLength, GFP_KERNEL);
	if (!cluster)
		return FUNC0(-ENOMEM);
	err = FUNC10(chip->dev,
			FUNC17(chip->dev, 0),
			UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR,
			USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
			cluster_id,
			FUNC11(chip),
			cluster, wLength);
	if (err < 0) {
		FUNC6(cluster);
		return FUNC0(err);
	} else if (err != wLength) {
		FUNC4(&dev->dev,
			"%u:%d : can't get Cluster Descriptor\n",
			iface_no, altno);
		FUNC6(cluster);
		return FUNC0(-EIO);
	}

	num_channels = cluster->bNrChannels;
	chmap = FUNC3(cluster);
	FUNC6(cluster);

	/*
	 * lookup the terminal associated to this interface
	 * to extract the clock
	 */
	input_term = FUNC13(chip->ctrl_intf,
							    as->bTerminalLink,
							    UAC_VERSION_3);
	if (input_term) {
		clock = input_term->bCSourceID;
		goto found_clock;
	}

	output_term = FUNC14(chip->ctrl_intf,
							      as->bTerminalLink,
							      UAC_VERSION_3);
	if (output_term) {
		clock = output_term->bCSourceID;
		goto found_clock;
	}

	FUNC4(&dev->dev, "%u:%d : bogus bTerminalLink %d\n",
			iface_no, altno, as->bTerminalLink);
	FUNC6(chmap);
	return NULL;

found_clock:
	fp = FUNC1(chip, alts, UAC_VERSION_3, iface_no,
				     altset_idx, altno, num_channels, clock);
	if (!fp) {
		FUNC6(chmap);
		return FUNC0(-ENOMEM);
	}

	fp->chmap = chmap;

	if (badd_profile >= UAC3_FUNCTION_SUBCLASS_GENERIC_IO) {
		fp->attributes = 0; /* No attributes */

		fp->fmt_type = UAC_FORMAT_TYPE_I;
		fp->formats = badd_formats;

		fp->nr_rates = 0;	/* SNDRV_PCM_RATE_CONTINUOUS */
		fp->rate_min = UAC3_BADD_SAMPLING_RATE;
		fp->rate_max = UAC3_BADD_SAMPLING_RATE;
		fp->rates = SNDRV_PCM_RATE_CONTINUOUS;

		pd = FUNC7(sizeof(*pd), GFP_KERNEL);
		if (!pd) {
			FUNC2(fp);
			return NULL;
		}
		pd->pd_id = (stream == SNDRV_PCM_STREAM_PLAYBACK) ?
					UAC3_BADD_PD_ID10 : UAC3_BADD_PD_ID11;
		pd->pd_d1d0_rec = UAC3_BADD_PD_RECOVER_D1D0;
		pd->pd_d2d0_rec = UAC3_BADD_PD_RECOVER_D2D0;

	} else {
		fp->attributes = FUNC9(chip, alts,
							       UAC_VERSION_3,
							       iface_no);

		pd = FUNC15(chip->ctrl_intf,
					       as->bTerminalLink);

		/* ok, let's parse further... */
		if (FUNC16(chip, fp, as, stream) < 0) {
			FUNC6(pd);
			FUNC2(fp);
			return NULL;
		}
	}

	if (pd)
		*pd_out = pd;

	return fp;
}