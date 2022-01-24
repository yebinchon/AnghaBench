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
struct snd_sb_csp {int qpos_left; int qpos_right; int /*<<< orphan*/  qsound_space; int /*<<< orphan*/  qsound_switch; int /*<<< orphan*/  q_lock; scalar_t__ qpos_changed; TYPE_1__* chip; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_card* card; } ;

/* Variables and functions */
 int EINVAL ; 
 int SNDRV_SB_CSP_QSOUND_MAX_RIGHT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_sb_csp*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb_csp*) ; 
 int /*<<< orphan*/  snd_sb_qsound_space ; 
 int /*<<< orphan*/  snd_sb_qsound_switch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_sb_csp * p)
{
	struct snd_card *card;
	int err;

	if (FUNC0(!p))
		return -EINVAL;

	card = p->chip->card;
	p->qpos_left = p->qpos_right = SNDRV_SB_CSP_QSOUND_MAX_RIGHT / 2;
	p->qpos_changed = 0;

	FUNC4(&p->q_lock);

	if ((err = FUNC1(card, p->qsound_switch = FUNC2(&snd_sb_qsound_switch, p))) < 0)
		goto __error;
	if ((err = FUNC1(card, p->qsound_space = FUNC2(&snd_sb_qsound_space, p))) < 0)
		goto __error;

	return 0;

     __error:
	FUNC3(p);
	return err;
}