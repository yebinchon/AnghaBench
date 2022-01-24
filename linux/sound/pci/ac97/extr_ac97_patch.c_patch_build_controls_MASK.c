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
struct snd_kcontrol_new {int dummy; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol_new const*,struct snd_ac97*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 * ac97, const struct snd_kcontrol_new *controls, int count)
{
	int idx, err;

	for (idx = 0; idx < count; idx++)
		if ((err = FUNC1(ac97->bus->card, FUNC0(&controls[idx], ac97))) < 0)
			return err;
	return 0;
}