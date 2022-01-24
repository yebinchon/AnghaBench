#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int voices; int /*<<< orphan*/ * block; TYPE_2__* emu; scalar_t__ dram_opened; } ;
struct TYPE_4__ {int /*<<< orphan*/  memhdr; } ;
struct TYPE_3__ {struct snd_emu8k_pcm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8k_pcm*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *subs)
{
	struct snd_emu8k_pcm *rec = subs->runtime->private_data;

	if (rec->block) {
		int ch;
		for (ch = 0; ch < rec->voices; ch++)
			FUNC2(rec, ch); // to be sure
		if (rec->dram_opened)
			FUNC0(rec->emu);
		FUNC1(rec->emu->memhdr, rec->block);
		rec->block = NULL;
	}
	return 0;
}