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
typedef  int u32 ;
struct xlnx_pcm_stream_param {int ch_limit; scalar_t__ xfer_mode; scalar_t__ mmio; int /*<<< orphan*/  buffer_size; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__ dma_buffer; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {struct xlnx_pcm_stream_param* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 scalar_t__ AES_TO_PCM ; 
 int AUD_CTRL_ACTIVE_CH_SHIFT ; 
 int AUD_CTRL_DATA_WIDTH_SHIFT ; 
 int AUD_STS_CH_STS_MASK ; 
 int BIT_DEPTH_16 ; 
 int BIT_DEPTH_20 ; 
 int BIT_DEPTH_24 ; 
 int BIT_DEPTH_32 ; 
 int BIT_DEPTH_8 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int PERIOD_CFG_PERIODS_SHIFT ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ XLNX_AUD_BUFF_ADDR_LSB ; 
 scalar_t__ XLNX_AUD_BUFF_ADDR_MSB ; 
 scalar_t__ XLNX_AUD_CH_STS_START ; 
 scalar_t__ XLNX_AUD_CTRL ; 
 scalar_t__ XLNX_AUD_PERIOD_CONFIG ; 
 scalar_t__ XLNX_AUD_STS ; 
 scalar_t__ XLNX_BYTES_PER_CH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC9 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *params)
{
	u32 low, high, active_ch, val, bytes_per_ch, bits_per_sample;
	u32 aes_reg1_val, aes_reg2_val;
	int status;
	u64 size;
	struct snd_soc_pcm_runtime *prtd = substream->private_data;
	struct snd_soc_component *component = FUNC9(prtd,
								    DRV_NAME);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct xlnx_pcm_stream_param *stream_data = runtime->private_data;

	active_ch = FUNC3(params);
	if (active_ch > stream_data->ch_limit)
		return -EINVAL;

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE &&
	    stream_data->xfer_mode == AES_TO_PCM) {
		val = FUNC7(stream_data->mmio + XLNX_AUD_STS);
		if (val & AUD_STS_CH_STS_MASK) {
			aes_reg1_val = FUNC7(stream_data->mmio +
					     XLNX_AUD_CH_STS_START);
			aes_reg2_val = FUNC7(stream_data->mmio +
					     XLNX_AUD_CH_STS_START + 0x4);

			FUNC12(aes_reg1_val, aes_reg2_val,
					      component->dev);
		}
	}

	size = FUNC2(params);
	status = FUNC8(substream, size);
	if (status < 0)
		return status;

	stream_data->buffer_size = size;

	low = FUNC1(substream->dma_buffer.addr);
	high = FUNC10(substream->dma_buffer.addr);
	FUNC11(low, stream_data->mmio + XLNX_AUD_BUFF_ADDR_LSB);
	FUNC11(high, stream_data->mmio + XLNX_AUD_BUFF_ADDR_MSB);

	val = FUNC7(stream_data->mmio + XLNX_AUD_CTRL);
	bits_per_sample = FUNC6(params);
	switch (bits_per_sample) {
	case 8:
		val |= (BIT_DEPTH_8 << AUD_CTRL_DATA_WIDTH_SHIFT);
		break;
	case 16:
		val |= (BIT_DEPTH_16 << AUD_CTRL_DATA_WIDTH_SHIFT);
		break;
	case 20:
		val |= (BIT_DEPTH_20 << AUD_CTRL_DATA_WIDTH_SHIFT);
		break;
	case 24:
		val |= (BIT_DEPTH_24 << AUD_CTRL_DATA_WIDTH_SHIFT);
		break;
	case 32:
		val |= (BIT_DEPTH_32 << AUD_CTRL_DATA_WIDTH_SHIFT);
		break;
	default:
		return -EINVAL;
	}

	val |= active_ch << AUD_CTRL_ACTIVE_CH_SHIFT;
	FUNC11(val, stream_data->mmio + XLNX_AUD_CTRL);

	val = (FUNC5(params) << PERIOD_CFG_PERIODS_SHIFT)
		| FUNC4(params);
	FUNC11(val, stream_data->mmio + XLNX_AUD_PERIOD_CONFIG);
	bytes_per_ch = FUNC0(FUNC4(params), active_ch);
	FUNC11(bytes_per_ch, stream_data->mmio + XLNX_BYTES_PER_CH);

	return 0;
}