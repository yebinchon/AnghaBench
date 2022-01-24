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
typedef  unsigned int u32 ;
struct hda_codec {int dummy; } ;
struct dsp_image_seg {unsigned int* data; unsigned int chip_addr; unsigned int count; } ;
struct dma_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_STATE_RUN ; 
 int /*<<< orphan*/  DMA_STATE_STOP ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (struct hda_codec*,unsigned int,unsigned int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,char*,...) ; 
 unsigned char* FUNC5 (struct dma_engine*) ; 
 scalar_t__ FUNC6 (struct dma_engine*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_engine*,unsigned short*) ; 
 int FUNC8 (struct dma_engine*) ; 
 int FUNC9 (struct dma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_engine*,unsigned int const*,unsigned int) ; 
 int FUNC11 (struct hda_codec*,unsigned int,unsigned int,unsigned int) ; 
 int FUNC12 (struct hda_codec*,unsigned int,unsigned int,unsigned int,int) ; 
 int FUNC13 (struct hda_codec*,unsigned int,int) ; 
 int FUNC14 (struct hda_codec*,unsigned int,int) ; 
 int FUNC15 (struct hda_codec*,unsigned int) ; 
 int FUNC16 (struct hda_codec*,struct dsp_image_seg const*) ; 
 int FUNC17 (unsigned short) ; 
 int FUNC18 (unsigned short) ; 
 struct dsp_image_seg* FUNC19 (struct dsp_image_seg const*) ; 
 scalar_t__ FUNC20 (struct dsp_image_seg const*) ; 
 scalar_t__ FUNC21 (struct dsp_image_seg const*) ; 
 unsigned long jiffies ; 
 unsigned int FUNC22 (unsigned int,unsigned int) ; 
 unsigned long FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 scalar_t__ FUNC25 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC26(struct hda_codec *codec,
			const struct dsp_image_seg *fls,
			unsigned int reloc,
			struct dma_engine *dma_engine,
			unsigned int dma_chan,
			unsigned int port_map_mask,
			bool ovly)
{
	int status = 0;
	bool comm_dma_setup_done = false;
	const unsigned int *data;
	unsigned int chip_addx;
	unsigned int words_to_write;
	unsigned int buffer_size_words;
	unsigned char *buffer_addx;
	unsigned short hda_format;
	unsigned int sample_rate_div;
	unsigned int sample_rate_mul;
	unsigned int num_chans;
	unsigned int hda_frame_size_words;
	unsigned int remainder_words;
	const u32 *data_remainder;
	u32 chip_addx_remainder;
	unsigned int run_size_words;
	const struct dsp_image_seg *hci_write = NULL;
	unsigned long timeout;
	bool dma_active;

	if (fls == NULL)
		return -EINVAL;
	if (FUNC20(fls)) {
		hci_write = fls;
		fls = FUNC19(fls);
	}

	if (hci_write && (!fls || FUNC21(fls))) {
		FUNC4(codec, "hci_write\n");
		return FUNC16(codec, hci_write);
	}

	if (fls == NULL || dma_engine == NULL || port_map_mask == 0) {
		FUNC4(codec, "Invalid Params\n");
		return -EINVAL;
	}

	data = fls->data;
	chip_addx = fls->chip_addr,
	words_to_write = fls->count;

	if (!words_to_write)
		return hci_write ? FUNC16(codec, hci_write) : 0;
	if (reloc)
		chip_addx = (chip_addx & (0xFFFF0000 << 2)) + (reloc << 2);

	if (!FUNC0(chip_addx, words_to_write) &&
	    !FUNC1(chip_addx, words_to_write) &&
	    !FUNC2(chip_addx, words_to_write)) {
		FUNC4(codec, "Invalid chip_addx Params\n");
		return -EINVAL;
	}

	buffer_size_words = (unsigned int)FUNC6(dma_engine) /
					sizeof(u32);

	buffer_addx = FUNC5(dma_engine);

	if (buffer_addx == NULL) {
		FUNC4(codec, "dma_engine buffer NULL\n");
		return -EINVAL;
	}

	FUNC7(dma_engine, &hda_format);
	sample_rate_div = ((FUNC18(hda_format) >> 0) & 3) + 1;
	sample_rate_mul = ((FUNC18(hda_format) >> 3) & 3) + 1;
	num_chans = FUNC17(hda_format) + 1;

	hda_frame_size_words = ((sample_rate_div == 0) ? 0 :
			(num_chans * sample_rate_mul / sample_rate_div));

	if (hda_frame_size_words == 0) {
		FUNC4(codec, "frmsz zero\n");
		return -EINVAL;
	}

	buffer_size_words = FUNC22(buffer_size_words,
				(unsigned int)(FUNC0(chip_addx, 1) ?
				65536 : 32768));
	buffer_size_words -= buffer_size_words % hda_frame_size_words;
	FUNC4(codec,
		   "chpadr=0x%08x frmsz=%u nchan=%u "
		   "rate_mul=%u div=%u bufsz=%u\n",
		   chip_addx, hda_frame_size_words, num_chans,
		   sample_rate_mul, sample_rate_div, buffer_size_words);

	if (buffer_size_words < hda_frame_size_words) {
		FUNC4(codec, "dspxfr_one_seg:failed\n");
		return -EINVAL;
	}

	remainder_words = words_to_write % hda_frame_size_words;
	data_remainder = data;
	chip_addx_remainder = chip_addx;

	data += remainder_words;
	chip_addx += remainder_words*sizeof(u32);
	words_to_write -= remainder_words;

	while (words_to_write != 0) {
		run_size_words = FUNC22(buffer_size_words, words_to_write);
		FUNC4(codec, "dspxfr (seg loop)cnt=%u rs=%u remainder=%u\n",
			    words_to_write, run_size_words, remainder_words);
		FUNC10(dma_engine, data, run_size_words*sizeof(u32));
		if (!comm_dma_setup_done) {
			status = FUNC14(codec, dma_chan, ovly);
			if (status < 0)
				return status;
			status = FUNC12(codec, chip_addx,
						dma_chan, port_map_mask, ovly);
			if (status < 0)
				return status;
			comm_dma_setup_done = true;
		}

		status = FUNC11(codec, chip_addx,
						run_size_words, dma_chan);
		if (status < 0)
			return status;
		status = FUNC13(codec, dma_chan, ovly);
		if (status < 0)
			return status;
		if (!FUNC15(codec, dma_chan)) {
			FUNC4(codec, "dspxfr:DMA did not start\n");
			return -EIO;
		}
		status = FUNC9(dma_engine, DMA_STATE_RUN);
		if (status < 0)
			return status;
		if (remainder_words != 0) {
			status = FUNC3(codec,
						chip_addx_remainder,
						data_remainder,
						remainder_words);
			if (status < 0)
				return status;
			remainder_words = 0;
		}
		if (hci_write) {
			status = FUNC16(codec, hci_write);
			if (status < 0)
				return status;
			hci_write = NULL;
		}

		timeout = jiffies + FUNC23(2000);
		do {
			dma_active = FUNC15(codec, dma_chan);
			if (!dma_active)
				break;
			FUNC24(20);
		} while (FUNC25(jiffies, timeout));
		if (dma_active)
			break;

		FUNC4(codec, "+++++ DMA complete\n");
		FUNC9(dma_engine, DMA_STATE_STOP);
		status = FUNC8(dma_engine);

		if (status < 0)
			return status;

		data += run_size_words;
		chip_addx += run_size_words*sizeof(u32);
		words_to_write -= run_size_words;
	}

	if (remainder_words != 0) {
		status = FUNC3(codec, chip_addx_remainder,
					data_remainder, remainder_words);
	}

	return status;
}