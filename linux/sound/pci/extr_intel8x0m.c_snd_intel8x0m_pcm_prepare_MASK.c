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
struct snd_pcm_runtime {int /*<<< orphan*/  rate; int /*<<< orphan*/  dma_addr; } ;
struct intel8x0m {int dummy; } ;
struct ichdev {int /*<<< orphan*/  ac97; int /*<<< orphan*/  fragsize; int /*<<< orphan*/  size; int /*<<< orphan*/  physbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_LINE1_LEVEL ; 
 int /*<<< orphan*/  AC97_LINE1_RATE ; 
 struct ichdev* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0m*,struct ichdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 struct intel8x0m* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct intel8x0m *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct ichdev *ichdev = FUNC0(substream);

	ichdev->physbuf = runtime->dma_addr;
	ichdev->size = FUNC3(substream);
	ichdev->fragsize = FUNC4(substream);
	FUNC1(ichdev->ac97, AC97_LINE1_RATE, runtime->rate);
	FUNC1(ichdev->ac97, AC97_LINE1_LEVEL, 0);
	FUNC2(chip, ichdev);
	return 0;
}