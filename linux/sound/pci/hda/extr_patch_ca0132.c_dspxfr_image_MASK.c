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
struct hda_codec {struct ca0132_spec* spec; } ;
struct dsp_image_seg {int dummy; } ;
struct dma_engine {unsigned short m_converter_format; int buf_size; struct dma_engine* dmab; scalar_t__ area; struct hda_codec* codec; } ;
struct ca0132_spec {int dsp_stream_id; } ;

/* Variables and functions */
 int DSP_DMA_WRITE_BUFLEN_INIT ; 
 int DSP_DMA_WRITE_BUFLEN_OVLY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int INVALID_DMA_CHANNEL ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,unsigned short,unsigned int*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,unsigned int,unsigned short,unsigned short*) ; 
 unsigned char FUNC4 (struct dma_engine*) ; 
 int FUNC5 (struct hda_codec*,unsigned short,unsigned int*) ; 
 int FUNC6 (struct hda_codec*) ; 
 int FUNC7 (struct hda_codec*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,unsigned int) ; 
 int FUNC9 (struct hda_codec*,struct dsp_image_seg const*,unsigned int,struct dma_engine*,unsigned int,unsigned int,int) ; 
 struct dsp_image_seg* FUNC10 (struct dsp_image_seg const*) ; 
 scalar_t__ FUNC11 (struct dsp_image_seg const*) ; 
 int /*<<< orphan*/  FUNC12 (struct dsp_image_seg const*) ; 
 int /*<<< orphan*/  FUNC13 (struct dsp_image_seg const*) ; 
 int /*<<< orphan*/  FUNC14 (struct dma_engine*) ; 
 void* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct hda_codec*,struct dma_engine*) ; 
 int FUNC17 (struct hda_codec*,unsigned short,int,struct dma_engine*) ; 

__attribute__((used)) static int FUNC18(struct hda_codec *codec,
			const struct dsp_image_seg *fls_data,
			unsigned int reloc,
			unsigned int sample_rate,
			unsigned short channels,
			bool ovly)
{
	struct ca0132_spec *spec = codec->spec;
	int status;
	unsigned short hda_format = 0;
	unsigned int response;
	unsigned char stream_id = 0;
	struct dma_engine *dma_engine;
	unsigned int dma_chan;
	unsigned int port_map_mask;

	if (fls_data == NULL)
		return -EINVAL;

	dma_engine = FUNC15(sizeof(*dma_engine), GFP_KERNEL);
	if (!dma_engine)
		return -ENOMEM;

	dma_engine->dmab = FUNC15(sizeof(*dma_engine->dmab), GFP_KERNEL);
	if (!dma_engine->dmab) {
		FUNC14(dma_engine);
		return -ENOMEM;
	}

	dma_engine->codec = codec;
	FUNC3(codec, sample_rate, channels, &hda_format);
	dma_engine->m_converter_format = hda_format;
	dma_engine->buf_size = (ovly ? DSP_DMA_WRITE_BUFLEN_OVLY :
			DSP_DMA_WRITE_BUFLEN_INIT) * 2;

	dma_chan = ovly ? INVALID_DMA_CHANNEL : 0;

	status = FUNC1(codec, WIDGET_CHIP_CTRL,
					hda_format, &response);

	if (status < 0) {
		FUNC0(codec, "set converter format fail\n");
		goto exit;
	}

	status = FUNC17(codec,
				dma_engine->m_converter_format,
				dma_engine->buf_size,
				dma_engine->dmab);
	if (status < 0)
		goto exit;
	spec->dsp_stream_id = status;

	if (ovly) {
		status = FUNC7(codec, &dma_chan);
		if (status < 0) {
			FUNC0(codec, "alloc dmachan fail\n");
			dma_chan = INVALID_DMA_CHANNEL;
			goto exit;
		}
	}

	port_map_mask = 0;
	status = FUNC5(codec, hda_format,
					&port_map_mask);
	if (status < 0) {
		FUNC0(codec, "alloc ports fail\n");
		goto exit;
	}

	stream_id = FUNC4(dma_engine);
	status = FUNC2(codec,
			WIDGET_CHIP_CTRL, stream_id, 0, &response);
	if (status < 0) {
		FUNC0(codec, "set stream chan fail\n");
		goto exit;
	}

	while ((fls_data != NULL) && !FUNC12(fls_data)) {
		if (!FUNC13(fls_data)) {
			FUNC0(codec, "FLS check fail\n");
			status = -EINVAL;
			goto exit;
		}
		status = FUNC9(codec, fls_data, reloc,
					dma_engine, dma_chan,
					port_map_mask, ovly);
		if (status < 0)
			break;

		if (FUNC11(fls_data))
			fls_data = FUNC10(fls_data);

		if ((fls_data != NULL) && !FUNC12(fls_data))
			fls_data = FUNC10(fls_data);
	}

	if (port_map_mask != 0)
		status = FUNC6(codec);

	if (status < 0)
		goto exit;

	status = FUNC2(codec,
				WIDGET_CHIP_CTRL, 0, 0, &response);

exit:
	if (ovly && (dma_chan != INVALID_DMA_CHANNEL))
		FUNC8(codec, dma_chan);

	if (dma_engine->dmab->area)
		FUNC16(codec, dma_engine->dmab);
	FUNC14(dma_engine->dmab);
	FUNC14(dma_engine);

	return status;
}