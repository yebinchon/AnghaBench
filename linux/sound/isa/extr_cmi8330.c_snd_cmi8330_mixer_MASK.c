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
struct snd_cmi8330 {scalar_t__ type; int /*<<< orphan*/  sb; int /*<<< orphan*/  wss; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CMI8329 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * snd_cmi8330_controls ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card, struct snd_cmi8330 *acard)
{
	unsigned int idx;
	int err;

	FUNC4(card->mixername, (acard->type == CMI8329) ? "CMI8329" : "CMI8330/C3D");

	for (idx = 0; idx < FUNC0(snd_cmi8330_controls); idx++) {
		err = FUNC2(card,
				FUNC3(&snd_cmi8330_controls[idx],
					     acard->wss));
		if (err < 0)
			return err;
	}

#ifdef ENABLE_SB_MIXER
	if ((err = cmi8330_add_sb_mixers(acard->sb)) < 0)
		return err;
#endif
	return 0;
}