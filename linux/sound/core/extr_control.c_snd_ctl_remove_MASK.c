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
struct snd_ctl_elem_id {int /*<<< orphan*/  numid; int /*<<< orphan*/  index; } ;
struct snd_kcontrol {unsigned int count; struct snd_ctl_elem_id id; int /*<<< orphan*/  list; } ;
struct snd_card {unsigned int controls_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*,int /*<<< orphan*/ ,struct snd_ctl_elem_id*) ; 

int FUNC4(struct snd_card *card, struct snd_kcontrol *kcontrol)
{
	struct snd_ctl_elem_id id;
	unsigned int idx;

	if (FUNC1(!card || !kcontrol))
		return -EINVAL;
	FUNC0(&kcontrol->list);
	card->controls_count -= kcontrol->count;
	id = kcontrol->id;
	for (idx = 0; idx < kcontrol->count; idx++, id.index++, id.numid++)
		FUNC3(card, SNDRV_CTL_EVENT_MASK_REMOVE, &id);
	FUNC2(kcontrol);
	return 0;
}