#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct snd_soc_dai_driver {int dummy; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_7__ {size_t fifo_size; int maxburst; void* addr_width; scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ dt; } ;
struct TYPE_5__ {size_t fifo_size; int maxburst; void* addr_width; scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ dt; } ;
struct dw_i2s_dev {TYPE_4__ capture_dma_data; int /*<<< orphan*/  capability; TYPE_2__ play_dma_data; int /*<<< orphan*/  i2s_base; } ;

/* Variables and functions */
 size_t FUNC0 (void**) ; 
 size_t FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 size_t FUNC5 (size_t) ; 
 size_t FUNC6 (size_t) ; 
 int /*<<< orphan*/  DWC_I2S_PLAY ; 
 int /*<<< orphan*/  DWC_I2S_RECORD ; 
 int EINVAL ; 
 int /*<<< orphan*/  I2S_COMP_PARAM_1 ; 
 int /*<<< orphan*/  I2S_COMP_PARAM_2 ; 
 scalar_t__ I2S_RXDMA ; 
 scalar_t__ I2S_TXDMA ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_8000_192000 ; 
 scalar_t__ FUNC7 (int) ; 
 void** bus_widths ; 
 int FUNC8 (struct dw_i2s_dev*,struct snd_soc_dai_driver*,int /*<<< orphan*/ ) ; 
 size_t* fifo_width ; 
 size_t FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dw_i2s_dev *dev,
				   struct snd_soc_dai_driver *dw_i2s_dai,
				   struct resource *res)
{
	u32 comp1 = FUNC9(dev->i2s_base, I2S_COMP_PARAM_1);
	u32 comp2 = FUNC9(dev->i2s_base, I2S_COMP_PARAM_2);
	u32 fifo_depth = 1 << (1 + FUNC2(comp1));
	u32 idx = FUNC1(comp1);
	u32 idx2;
	int ret;

	if (FUNC7(idx >= FUNC0(bus_widths)))
		return -EINVAL;

	ret = FUNC8(dev, dw_i2s_dai, SNDRV_PCM_RATE_8000_192000);
	if (ret < 0)
		return ret;

	if (FUNC4(comp1)) {
		idx2 = FUNC5(comp1);

		dev->capability |= DWC_I2S_PLAY;
		dev->play_dma_data.dt.addr = res->start + I2S_TXDMA;
		dev->play_dma_data.dt.addr_width = bus_widths[idx];
		dev->play_dma_data.dt.fifo_size = fifo_depth *
			(fifo_width[idx2]) >> 8;
		dev->play_dma_data.dt.maxburst = 16;
	}
	if (FUNC3(comp1)) {
		idx2 = FUNC6(comp2);

		dev->capability |= DWC_I2S_RECORD;
		dev->capture_dma_data.dt.addr = res->start + I2S_RXDMA;
		dev->capture_dma_data.dt.addr_width = bus_widths[idx];
		dev->capture_dma_data.dt.fifo_size = fifo_depth *
			(fifo_width[idx2] >> 8);
		dev->capture_dma_data.dt.maxburst = 16;
	}

	return 0;

}