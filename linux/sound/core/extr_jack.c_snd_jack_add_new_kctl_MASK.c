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
struct snd_jack_kctl {int dummy; } ;
struct snd_jack {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_jack*,struct snd_jack_kctl*) ; 
 struct snd_jack_kctl* FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC2(struct snd_jack *jack, const char * name, int mask)
{
	struct snd_jack_kctl *jack_kctl;

	jack_kctl = FUNC1(jack->card, name, mask);
	if (!jack_kctl)
		return -ENOMEM;

	FUNC0(jack, jack_kctl);
	return 0;
}