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
typedef  int u32 ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hardware {int info; int periods_min; int period_bytes_min; int /*<<< orphan*/  formats; int /*<<< orphan*/  fifo_size; int /*<<< orphan*/  buffer_bytes_max; int /*<<< orphan*/  period_bytes_max; int /*<<< orphan*/  periods_max; } ;
struct snd_dmaengine_dai_dma_data {int flags; int /*<<< orphan*/  fifo_size; } ;
struct dmaengine_pcm {int flags; TYPE_1__* config; struct dma_chan** chan; } ;
struct dma_slave_caps {scalar_t__ residue_granularity; int dst_addr_widths; int src_addr_widths; scalar_t__ cmd_resume; scalar_t__ cmd_pause; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ snd_pcm_format_t ;
typedef  int /*<<< orphan*/  hw ;
struct TYPE_2__ {struct snd_pcm_hardware* pcm_hardware; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMA_RESIDUE_GRANULARITY_SEGMENT ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_2_BYTES ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 scalar_t__ SNDRV_PCM_FORMAT_FIRST ; 
 scalar_t__ SNDRV_PCM_FORMAT_LAST ; 
 int SNDRV_PCM_INFO_BATCH ; 
 int SNDRV_PCM_INFO_INTERLEAVED ; 
 int SNDRV_PCM_INFO_MMAP ; 
 int SNDRV_PCM_INFO_MMAP_VALID ; 
 int SNDRV_PCM_INFO_PAUSE ; 
 int SNDRV_PCM_INFO_RESUME ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int SND_DMAENGINE_PCM_DAI_FLAG_PACK ; 
 int /*<<< orphan*/  SND_DMAENGINE_PCM_DRV_NAME ; 
 int SND_DMAENGINE_PCM_FLAG_NO_RESIDUE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct dma_chan*,struct dma_slave_caps*) ; 
 struct device* FUNC3 (struct dmaengine_pcm*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hardware*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 struct snd_dmaengine_dai_dma_data* FUNC7 (int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 struct snd_soc_component* FUNC8 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snd_pcm_substream*,struct snd_pcm_hardware*) ; 
 struct dmaengine_pcm* FUNC10 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC8(rtd, SND_DMAENGINE_PCM_DRV_NAME);
	struct dmaengine_pcm *pcm = FUNC10(component);
	struct device *dma_dev = FUNC3(pcm, substream);
	struct dma_chan *chan = pcm->chan[substream->stream];
	struct snd_dmaengine_dai_dma_data *dma_data;
	struct dma_slave_caps dma_caps;
	struct snd_pcm_hardware hw;
	u32 addr_widths = FUNC0(DMA_SLAVE_BUSWIDTH_1_BYTE) |
			  FUNC0(DMA_SLAVE_BUSWIDTH_2_BYTES) |
			  FUNC0(DMA_SLAVE_BUSWIDTH_4_BYTES);
	snd_pcm_format_t i;
	int ret;

	if (pcm->config && pcm->config->pcm_hardware)
		return FUNC9(substream,
				pcm->config->pcm_hardware);

	dma_data = FUNC7(rtd->cpu_dai, substream);

	FUNC4(&hw, 0, sizeof(hw));
	hw.info = SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_MMAP_VALID |
			SNDRV_PCM_INFO_INTERLEAVED;
	hw.periods_min = 2;
	hw.periods_max = UINT_MAX;
	hw.period_bytes_min = 256;
	hw.period_bytes_max = FUNC1(dma_dev);
	hw.buffer_bytes_max = SIZE_MAX;
	hw.fifo_size = dma_data->fifo_size;

	if (pcm->flags & SND_DMAENGINE_PCM_FLAG_NO_RESIDUE)
		hw.info |= SNDRV_PCM_INFO_BATCH;

	ret = FUNC2(chan, &dma_caps);
	if (ret == 0) {
		if (dma_caps.cmd_pause && dma_caps.cmd_resume)
			hw.info |= SNDRV_PCM_INFO_PAUSE | SNDRV_PCM_INFO_RESUME;
		if (dma_caps.residue_granularity <= DMA_RESIDUE_GRANULARITY_SEGMENT)
			hw.info |= SNDRV_PCM_INFO_BATCH;

		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			addr_widths = dma_caps.dst_addr_widths;
		else
			addr_widths = dma_caps.src_addr_widths;
	}

	/*
	 * If SND_DMAENGINE_PCM_DAI_FLAG_PACK is set keep
	 * hw.formats set to 0, meaning no restrictions are in place.
	 * In this case it's the responsibility of the DAI driver to
	 * provide the supported format information.
	 */
	if (!(dma_data->flags & SND_DMAENGINE_PCM_DAI_FLAG_PACK))
		/*
		 * Prepare formats mask for valid/allowed sample types. If the
		 * dma does not have support for the given physical word size,
		 * it needs to be masked out so user space can not use the
		 * format which produces corrupted audio.
		 * In case the dma driver does not implement the slave_caps the
		 * default assumption is that it supports 1, 2 and 4 bytes
		 * widths.
		 */
		for (i = SNDRV_PCM_FORMAT_FIRST; i <= SNDRV_PCM_FORMAT_LAST; i++) {
			int bits = FUNC6(i);

			/*
			 * Enable only samples with DMA supported physical
			 * widths
			 */
			switch (bits) {
			case 8:
			case 16:
			case 24:
			case 32:
			case 64:
				if (addr_widths & (1 << (bits / 8)))
					hw.formats |= FUNC5(i);
				break;
			default:
				/* Unsupported types */
				break;
			}
		}

	return FUNC9(substream, &hw);
}