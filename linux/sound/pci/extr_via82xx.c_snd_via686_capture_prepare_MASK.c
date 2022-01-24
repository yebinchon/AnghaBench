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
struct viadev {int dummy; } ;
struct via82xx {int /*<<< orphan*/  ac97; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  rate; struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct via82xx* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct via82xx*,struct viadev*,struct snd_pcm_runtime*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct via82xx *chip = FUNC1(substream);
	struct viadev *viadev = substream->runtime->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC0(chip->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
	FUNC2(chip, viadev, runtime);
	return 0;
}