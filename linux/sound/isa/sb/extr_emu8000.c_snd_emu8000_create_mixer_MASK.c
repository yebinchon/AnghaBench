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
struct snd_emu8000 {scalar_t__* controls; int /*<<< orphan*/  control_lock; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMU8000_NUM_CONTROLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * mixer_defs ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct snd_card*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct snd_card *card, struct snd_emu8000 *emu)
{
	int i, err = 0;

	if (FUNC2(!emu || !card))
		return -EINVAL;

	FUNC6(&emu->control_lock);

	FUNC1(emu->controls, 0, sizeof(emu->controls));
	for (i = 0; i < EMU8000_NUM_CONTROLS; i++) {
		if ((err = FUNC3(card, emu->controls[i] = FUNC4(mixer_defs[i], emu))) < 0)
			goto __error;
	}
	return 0;

__error:
	for (i = 0; i < EMU8000_NUM_CONTROLS; i++) {
		FUNC0(&card->controls_rwsem);
		if (emu->controls[i])
			FUNC5(card, emu->controls[i]);
		FUNC7(&card->controls_rwsem);
	}
	return err;
}