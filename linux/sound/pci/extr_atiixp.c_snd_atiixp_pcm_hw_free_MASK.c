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
struct atiixp_dma {size_t ac97_pcm_type; scalar_t__ pcm_open_flag; } ;
struct atiixp {struct ac97_pcm** pcms; } ;
struct ac97_pcm {int dummy; } ;
struct TYPE_2__ {struct atiixp_dma* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atiixp*,struct atiixp_dma*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct ac97_pcm*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct atiixp* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct atiixp *chip = FUNC3(substream);
	struct atiixp_dma *dma = substream->runtime->private_data;

	if (dma->pcm_open_flag) {
		struct ac97_pcm *pcm = chip->pcms[dma->ac97_pcm_type];
		FUNC1(pcm);
		dma->pcm_open_flag = 0;
	}
	FUNC0(chip, dma, substream);
	FUNC2(substream);
	return 0;
}