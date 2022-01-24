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
struct snd_sb {int /*<<< orphan*/  mixer_lock; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;
struct sbmix_elem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_card*,char*) ; 
 int FUNC1 (struct snd_sb*,struct sbmix_elem*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct snd_sb *chip,
			    struct sbmix_elem *controls,
			    int controls_count,
			    unsigned char map[][2],
			    int map_count,
			    char *name)
{
	unsigned long flags;
	struct snd_card *card = chip->card;
	int idx, err;

	/* mixer reset */
	FUNC3(&chip->mixer_lock, flags);
	FUNC2(chip, 0x00, 0x00);
	FUNC4(&chip->mixer_lock, flags);

	/* mute and zero volume channels */
	for (idx = 0; idx < map_count; idx++) {
		FUNC3(&chip->mixer_lock, flags);
		FUNC2(chip, map[idx][0], map[idx][1]);
		FUNC4(&chip->mixer_lock, flags);
	}

	for (idx = 0; idx < controls_count; idx++) {
		err = FUNC1(chip, &controls[idx]);
		if (err < 0)
			return err;
	}
	FUNC0(card, name);
	FUNC5(card->mixername, name);
	return 0;
}