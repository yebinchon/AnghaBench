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
struct snd_pcm_runtime {int sample_bits; int /*<<< orphan*/  dma_addr; } ;
struct intel8x0 {scalar_t__ device_type; } ;
struct ichdev {scalar_t__ ichd; int pos_shift; int /*<<< orphan*/  fragsize; int /*<<< orphan*/  size; int /*<<< orphan*/  physbuf; } ;

/* Variables and functions */
 scalar_t__ DEVICE_INTEL_ICH4 ; 
 scalar_t__ ICHD_PCMOUT ; 
 struct ichdev* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel8x0*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0*,struct ichdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 struct intel8x0* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct intel8x0 *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct ichdev *ichdev = FUNC0(substream);

	ichdev->physbuf = runtime->dma_addr;
	ichdev->size = FUNC3(substream);
	ichdev->fragsize = FUNC4(substream);
	if (ichdev->ichd == ICHD_PCMOUT) {
		FUNC1(chip, runtime);
		if (chip->device_type == DEVICE_INTEL_ICH4)
			ichdev->pos_shift = (runtime->sample_bits > 16) ? 2 : 1;
	}
	FUNC2(chip, ichdev);
	return 0;
}