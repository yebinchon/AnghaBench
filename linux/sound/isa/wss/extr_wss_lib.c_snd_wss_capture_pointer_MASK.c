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
struct snd_wss {int* image; int /*<<< orphan*/  c_dma_size; int /*<<< orphan*/  dma2; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_RECORD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_wss* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_wss *chip = FUNC2(substream);
	size_t ptr;

	if (!(chip->image[CS4231_IFACE_CTRL] & CS4231_RECORD_ENABLE))
		return 0;
	ptr = FUNC1(chip->dma2, chip->c_dma_size);
	return FUNC0(substream->runtime, ptr);
}