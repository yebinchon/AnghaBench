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
struct snd_harmony {struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 int EINVAL ; 
 int HARMONY_CONTROLS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_harmony*) ; 
 int /*<<< orphan*/ * snd_harmony_controls ; 
 int /*<<< orphan*/  FUNC3 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct snd_harmony *h)
{
	struct snd_card *card;
	int idx, err;

	if (FUNC0(!h))
		return -EINVAL;
	card = h->card;
	FUNC4(card->mixername, "Harmony Gain control interface");

	for (idx = 0; idx < HARMONY_CONTROLS; idx++) {
		err = FUNC1(card, 
				  FUNC2(&snd_harmony_controls[idx], h));
		if (err < 0)
			return err;
	}
	
	FUNC3(h);

	return 0;
}