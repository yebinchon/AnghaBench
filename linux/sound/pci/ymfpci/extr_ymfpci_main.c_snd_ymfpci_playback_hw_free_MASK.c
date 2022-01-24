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
struct snd_ymfpci_pcm {int /*<<< orphan*/ ** voices; } ;
struct snd_ymfpci {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 struct snd_ymfpci* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_ymfpci *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ymfpci_pcm *ypcm;
	
	if (runtime->private_data == NULL)
		return 0;
	ypcm = runtime->private_data;

	/* wait, until the PCI operations are not finished */
	FUNC2(chip);
	FUNC0(substream);
	if (ypcm->voices[1]) {
		FUNC3(chip, ypcm->voices[1]);
		ypcm->voices[1] = NULL;
	}
	if (ypcm->voices[0]) {
		FUNC3(chip, ypcm->voices[0]);
		ypcm->voices[0] = NULL;
	}
	return 0;
}