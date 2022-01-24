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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_addr; } ;

/* Variables and functions */
 scalar_t__ OXYGEN_DMA_MULTICH_COUNT ; 
 scalar_t__ OXYGEN_DMA_MULTICH_TCOUNT ; 
 unsigned int PCM_MULTICH ; 
 scalar_t__* channel_base_registers ; 
 unsigned int FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,scalar_t__,int) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int) ; 
 struct oxygen* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *hw_params)
{
	struct oxygen *chip = FUNC6(substream);
	unsigned int channel = FUNC0(substream);
	int err;

	err = FUNC5(substream,
				       FUNC3(hw_params));
	if (err < 0)
		return err;

	FUNC2(chip, channel_base_registers[channel],
		       (u32)substream->runtime->dma_addr);
	if (channel == PCM_MULTICH) {
		FUNC2(chip, OXYGEN_DMA_MULTICH_COUNT,
			       FUNC3(hw_params) / 4 - 1);
		FUNC2(chip, OXYGEN_DMA_MULTICH_TCOUNT,
			       FUNC4(hw_params) / 4 - 1);
	} else {
		FUNC1(chip, channel_base_registers[channel] + 4,
			       FUNC3(hw_params) / 4 - 1);
		FUNC1(chip, channel_base_registers[channel] + 6,
			       FUNC4(hw_params) / 4 - 1);
	}
	return 0;
}