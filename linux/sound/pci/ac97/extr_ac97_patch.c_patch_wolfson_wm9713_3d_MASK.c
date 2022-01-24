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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_ac97*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wm13_snd_ac97_controls_3d ; 

__attribute__((used)) static int FUNC3 (struct snd_ac97 * ac97)
{
	int err, i;
    
	for (i = 0; i < FUNC0(wm13_snd_ac97_controls_3d); i++) {
		if ((err = FUNC2(ac97->bus->card, FUNC1(&wm13_snd_ac97_controls_3d[i], ac97))) < 0)
			return err;
	}
	return 0;
}