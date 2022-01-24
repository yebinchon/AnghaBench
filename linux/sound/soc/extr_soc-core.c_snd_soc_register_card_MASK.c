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
struct snd_soc_card {int /*<<< orphan*/  dpcm_lock; int /*<<< orphan*/  pcm_mutex; int /*<<< orphan*/  dapm_mutex; int /*<<< orphan*/  mutex; scalar_t__ instantiated; scalar_t__ num_rtd; int /*<<< orphan*/  dobj_list; int /*<<< orphan*/  dapm_dirty; int /*<<< orphan*/  rtd_list; int /*<<< orphan*/  dai_link_list; int /*<<< orphan*/  list; int /*<<< orphan*/  component_dev_list; int /*<<< orphan*/  aux_comp_list; int /*<<< orphan*/  dapm_list; int /*<<< orphan*/  paths; int /*<<< orphan*/  widgets; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct snd_soc_card *card)
{
	if (!card->name || !card->dev)
		return -EINVAL;

	FUNC1(card->dev, card);

	FUNC0(&card->widgets);
	FUNC0(&card->paths);
	FUNC0(&card->dapm_list);
	FUNC0(&card->aux_comp_list);
	FUNC0(&card->component_dev_list);
	FUNC0(&card->list);
	FUNC0(&card->dai_link_list);
	FUNC0(&card->rtd_list);
	FUNC0(&card->dapm_dirty);
	FUNC0(&card->dobj_list);

	card->num_rtd = 0;
	card->instantiated = 0;
	FUNC2(&card->mutex);
	FUNC2(&card->dapm_mutex);
	FUNC2(&card->pcm_mutex);
	FUNC4(&card->dpcm_lock);

	return FUNC3(card);
}