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
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * snd_ac97_controls_si3036 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_ac97*) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 * ac97)
{
	int idx, err;
	for (idx = 0; idx < FUNC0(snd_ac97_controls_si3036); idx++)
		if ((err = FUNC1(ac97->bus->card, FUNC2(&snd_ac97_controls_si3036[idx], ac97))) < 0)
			return err;
	return 0;
}