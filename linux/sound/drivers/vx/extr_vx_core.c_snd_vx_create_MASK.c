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
struct vx_core {int irq; struct snd_card* card; int /*<<< orphan*/  mixer_mutex; struct snd_vx_ops* ops; int /*<<< orphan*/  type; struct snd_vx_hardware* hw; int /*<<< orphan*/  lock; } ;
struct snd_vx_ops {int dummy; } ;
struct snd_vx_hardware {char* name; int /*<<< orphan*/  type; } ;
struct snd_card {int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; struct vx_core* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vx_core* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*) ; 

struct vx_core *FUNC6(struct snd_card *card, struct snd_vx_hardware *hw,
			      struct snd_vx_ops *ops,
			      int extra_size)
{
	struct vx_core *chip;

	if (FUNC2(!card || !hw || !ops))
		return NULL;

	chip = FUNC0(sizeof(*chip) + extra_size, GFP_KERNEL);
	if (! chip)
		return NULL;
	FUNC1(&chip->lock);
	chip->irq = -1;
	chip->hw = hw;
	chip->type = hw->type;
	chip->ops = ops;
	FUNC1(&chip->mixer_mutex);

	chip->card = card;
	card->private_data = chip;
	FUNC4(card->driver, hw->name);
	FUNC3(card->shortname, "Digigram %s", hw->name);

	FUNC5(chip);

	return chip;
}