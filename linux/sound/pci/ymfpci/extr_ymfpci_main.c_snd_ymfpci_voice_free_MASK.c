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
struct snd_ymfpci_voice {int number; int /*<<< orphan*/ * interrupt; TYPE_1__* ypcm; scalar_t__ midi; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; } ;
struct snd_ymfpci {int src441_used; int /*<<< orphan*/  voice_lock; } ;
struct TYPE_2__ {scalar_t__ use_441_slot; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_ymfpci *chip, struct snd_ymfpci_voice *pvoice)
{
	unsigned long flags;
	
	if (FUNC0(!pvoice))
		return -EINVAL;
	FUNC1(chip);
	FUNC2(&chip->voice_lock, flags);
	if (pvoice->number == chip->src441_used) {
		chip->src441_used = -1;
		pvoice->ypcm->use_441_slot = 0;
	}
	pvoice->use = pvoice->pcm = pvoice->synth = pvoice->midi = 0;
	pvoice->ypcm = NULL;
	pvoice->interrupt = NULL;
	FUNC3(&chip->voice_lock, flags);
	return 0;
}