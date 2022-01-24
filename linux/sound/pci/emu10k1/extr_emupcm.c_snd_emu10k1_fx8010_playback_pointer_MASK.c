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
struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {int /*<<< orphan*/  pcm_rec; scalar_t__ gpr_ptr; scalar_t__ gpr_trigger; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {scalar_t__ gpr_base; TYPE_1__ fx8010; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int FUNC0 (struct snd_emu10k1*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ *,size_t) ; 
 struct snd_emu10k1* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC2(substream);
	struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];
	size_t ptr; /* byte pointer */

	if (!FUNC0(emu, emu->gpr_base + pcm->gpr_trigger, 0))
		return 0;
	ptr = FUNC0(emu, emu->gpr_base + pcm->gpr_ptr, 0) << 2;
	return FUNC1(substream, &pcm->pcm_rec, ptr);
}