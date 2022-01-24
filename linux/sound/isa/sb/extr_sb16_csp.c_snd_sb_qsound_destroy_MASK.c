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
struct snd_sb_csp {int /*<<< orphan*/  q_lock; scalar_t__ qpos_changed; int /*<<< orphan*/  qsound_space; int /*<<< orphan*/  qsound_switch; TYPE_1__* chip; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;
struct TYPE_2__ {struct snd_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct snd_sb_csp * p)
{
	struct snd_card *card;
	unsigned long flags;

	if (FUNC1(!p))
		return;

	card = p->chip->card;	
	
	FUNC0(&card->controls_rwsem);
	if (p->qsound_switch)
		FUNC2(card, p->qsound_switch);
	if (p->qsound_space)
		FUNC2(card, p->qsound_space);
	FUNC5(&card->controls_rwsem);

	/* cancel pending transfer of QSound parameters */
	FUNC3 (&p->q_lock, flags);
	p->qpos_changed = 0;
	FUNC4 (&p->q_lock, flags);
}