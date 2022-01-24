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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int pcm_rcntrl_reg; int dma2; } ;
struct snd_gus_card {TYPE_1__ gf1; scalar_t__ c_pos; int /*<<< orphan*/  c_period_size; int /*<<< orphan*/  c_dma_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_gus_card* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
					 struct snd_pcm_hw_params *hw_params)
{
	struct snd_gus_card *gus = FUNC6(substream);

	gus->c_dma_size = FUNC0(hw_params);
	gus->c_period_size = FUNC3(hw_params);
	gus->c_pos = 0;
	gus->gf1.pcm_rcntrl_reg = 0x21;		/* IRQ at end, enable & start */
	if (FUNC1(hw_params) > 1)
		gus->gf1.pcm_rcntrl_reg |= 2;
	if (gus->gf1.dma2 > 3)
		gus->gf1.pcm_rcntrl_reg |= 4;
	if (FUNC4(FUNC2(hw_params)))
		gus->gf1.pcm_rcntrl_reg |= 0x80;
	return FUNC5(substream, FUNC0(hw_params));
}