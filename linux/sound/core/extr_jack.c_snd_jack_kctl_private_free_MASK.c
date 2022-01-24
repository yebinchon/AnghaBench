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
struct snd_kcontrol {struct snd_jack_kctl* private_data; } ;
struct snd_jack_kctl {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_jack_kctl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct snd_kcontrol *kctl)
{
	struct snd_jack_kctl *jack_kctl;

	jack_kctl = kctl->private_data;
	if (jack_kctl) {
		FUNC1(&jack_kctl->list);
		FUNC0(jack_kctl);
	}
}