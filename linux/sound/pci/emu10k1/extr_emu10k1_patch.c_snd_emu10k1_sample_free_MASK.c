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
struct snd_util_memhdr {int dummy; } ;
struct snd_sf_sample {int /*<<< orphan*/ * block; } ;
struct snd_emux {struct snd_emu10k1* hw; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct snd_emux *rec, struct snd_sf_sample *sp,
			struct snd_util_memhdr *hdr)
{
	struct snd_emu10k1 *emu;

	emu = rec->hw;
	if (FUNC0(!sp || !hdr))
		return -EINVAL;

	if (sp->block) {
		FUNC1(emu, sp->block);
		sp->block = NULL;
	}
	return 0;
}