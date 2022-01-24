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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  dma_area; } ;
struct aw2_pcm_device {int /*<<< orphan*/  stream_number; struct aw2* chip; } ;
struct aw2 {int /*<<< orphan*/  saa7146; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aw2_pcm_device* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream
						     *substream)
{
	struct aw2_pcm_device *pcm_device = FUNC2(substream);
	struct aw2 *chip = pcm_device->chip;
	unsigned int current_ptr;

	/* get the current hardware pointer */
	struct snd_pcm_runtime *runtime = substream->runtime;
	current_ptr =
		FUNC1(&chip->saa7146,
						   pcm_device->stream_number,
						   runtime->dma_area,
						   runtime->buffer_size);

	return FUNC0(substream->runtime, current_ptr);
}