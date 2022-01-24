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
struct hda_codec {int dummy; } ;
struct dsp_image_seg {int dummy; } ;

/* Variables and functions */
 int DMA_OVERLAY_FRAME_SIZE_NWORDS ; 
 int DMA_TRANSFER_FRAME_SIZE_NWORDS ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*) ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct hda_codec*,struct dsp_image_seg const*,unsigned int,unsigned int,unsigned short,int) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec,
			const struct dsp_image_seg *fls,
			bool ovly,
			unsigned int reloc,
			bool autostart,
			int router_chans)
{
	int status = 0;
	unsigned int sample_rate;
	unsigned short channels;

	FUNC0(codec, "---- dspload_image begin ------\n");
	if (router_chans == 0) {
		if (!ovly)
			router_chans = DMA_TRANSFER_FRAME_SIZE_NWORDS;
		else
			router_chans = DMA_OVERLAY_FRAME_SIZE_NWORDS;
	}

	sample_rate = 48000;
	channels = (unsigned short)router_chans;

	while (channels > 16) {
		sample_rate *= 2;
		channels /= 2;
	}

	do {
		FUNC0(codec, "Ready to program DMA\n");
		if (!ovly)
			status = FUNC1(codec);

		if (status < 0)
			break;

		FUNC0(codec, "dsp_reset() complete\n");
		status = FUNC4(codec, fls, reloc, sample_rate, channels,
				      ovly);

		if (status < 0)
			break;

		FUNC0(codec, "dspxfr_image() complete\n");
		if (autostart && !ovly) {
			FUNC3(codec);
			status = FUNC2(codec);
		}

		FUNC0(codec, "LOAD FINISHED\n");
	} while (0);

	return status;
}