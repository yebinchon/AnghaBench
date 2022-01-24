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
struct snd_kcontrol {int /*<<< orphan*/  info; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;
typedef  enum snd_ctl_add_mode { ____Placeholder_snd_ctl_add_mode } snd_ctl_add_mode ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct snd_card*,struct snd_kcontrol*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card,
			       struct snd_kcontrol *kcontrol,
			       enum snd_ctl_add_mode mode)
{
	int err = -EINVAL;

	if (! kcontrol)
		return err;
	if (FUNC2(!card || !kcontrol->info))
		goto error;

	FUNC1(&card->controls_rwsem);
	err = FUNC0(card, kcontrol, mode);
	FUNC4(&card->controls_rwsem);
	if (err < 0)
		goto error;
	return 0;

 error:
	FUNC3(kcontrol);
	return err;
}