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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  rate; int /*<<< orphan*/  channels; } ;
struct TYPE_2__ {int hw_buffer_size; int hw_queue_size; int /*<<< orphan*/  sw_buffer_size; int /*<<< orphan*/  hw_io; } ;
struct hal2_codec {struct snd_pcm_substream* substream; TYPE_1__ pcm_indirect; int /*<<< orphan*/  buffer_dma; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  voices; } ;
struct snd_hal2 {struct hal2_codec adc; } ;

/* Variables and functions */
 int H2_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hal2_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_hal2*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_hal2* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_hal2 *hal2 = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct hal2_codec *adc = &hal2->adc;

	adc->voices = runtime->channels;
	adc->sample_rate = FUNC0(adc, runtime->rate);
	FUNC2(&adc->pcm_indirect, 0, sizeof(adc->pcm_indirect));
	adc->pcm_indirect.hw_buffer_size = H2_BUF_SIZE;
	adc->pcm_indirect.hw_queue_size = H2_BUF_SIZE / 2;
	adc->pcm_indirect.hw_io = adc->buffer_dma;
	adc->pcm_indirect.sw_buffer_size = FUNC3(substream);
	adc->substream = substream;
	FUNC1(hal2);
	return 0;
}