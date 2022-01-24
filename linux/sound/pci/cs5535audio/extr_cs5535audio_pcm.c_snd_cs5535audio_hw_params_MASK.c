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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs5535audio_dma {int pcm_open_flag; int /*<<< orphan*/  buf_bytes; int /*<<< orphan*/  buf_addr; } ;
struct cs5535audio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; struct cs5535audio_dma* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct cs5535audio*,struct cs5535audio_dma*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct cs5535audio* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				     struct snd_pcm_hw_params *hw_params)
{
	struct cs5535audio *cs5535au = FUNC5(substream);
	struct cs5535audio_dma *dma = substream->runtime->private_data;
	int err;

	err = FUNC4(substream,
					FUNC1(hw_params));
	if (err < 0)
		return err;
	dma->buf_addr = substream->runtime->dma_addr;
	dma->buf_bytes = FUNC1(hw_params);

	err = FUNC0(cs5535au, dma, substream,
					    FUNC3(hw_params),
					    FUNC2(hw_params));
	if (!err)
		dma->pcm_open_flag = 1;

	return err;
}