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
struct snd_hwdep {struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcm_mutex; int /*<<< orphan*/  chip_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  USX2Y_STAT_CHIP_MMAP_PCM_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct snd_card*) ; 
 int FUNC3 (struct snd_card*) ; 

__attribute__((used)) static int FUNC4(struct snd_hwdep *hw, struct file *file)
{
	struct snd_card *card = hw->card;
	int err;

	FUNC0(&FUNC2(card)->pcm_mutex);
	err = FUNC3(card);
	if (!err)
		FUNC2(hw->card)->chip_status &= ~USX2Y_STAT_CHIP_MMAP_PCM_URBS;
	FUNC1(&FUNC2(card)->pcm_mutex);
	return err;
}