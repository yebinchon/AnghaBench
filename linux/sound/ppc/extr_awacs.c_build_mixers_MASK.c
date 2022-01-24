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
struct snd_pmac {int /*<<< orphan*/  card; } ;
struct snd_kcontrol_new {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol_new*,struct snd_pmac*) ; 

__attribute__((used)) static int FUNC2(struct snd_pmac *chip, int nums,
			struct snd_kcontrol_new *mixers)
{
	int i, err;

	for (i = 0; i < nums; i++) {
		err = FUNC0(chip->card, FUNC1(&mixers[i], chip));
		if (err < 0)
			return err;
	}
	return 0;
}