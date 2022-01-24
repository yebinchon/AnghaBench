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
typedef  void* u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_area; } ;
struct pcm_period {struct pcm_period* next; void* relative_end; void* start; } ;
struct audio_stream {unsigned int period_size; unsigned int periods; struct pcm_period* buffer; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct audio_stream*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct audio_stream *stream,
				 unsigned int period_bytes,
				 unsigned int periods)
{
	struct snd_pcm_substream *substream = stream->substream;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct pcm_period *pointer;
	unsigned long dma_start;
	int i;

	dma_start = FUNC2(runtime->dma_area);

	if (stream->period_size == period_bytes &&
	    stream->periods == periods)
		return 0; /* not changed */

	FUNC0(stream);

	stream->period_size = period_bytes;
	stream->periods = periods;

	stream->buffer = FUNC1(sizeof(struct pcm_period), GFP_KERNEL);
	if (!stream->buffer)
		return -ENOMEM;
	pointer = stream->buffer;
	for (i = 0; i < periods; i++) {
		pointer->start = (u32)(dma_start + (i * period_bytes));
		pointer->relative_end = (u32) (((i+1) * period_bytes) - 0x1);
		if (i < periods - 1) {
			pointer->next = FUNC1(sizeof(struct pcm_period),
						GFP_KERNEL);
			if (!pointer->next) {
				FUNC0(stream);
				return -ENOMEM;
			}
			pointer = pointer->next;
		}
	}
	pointer->next = stream->buffer;
	return 0;
}