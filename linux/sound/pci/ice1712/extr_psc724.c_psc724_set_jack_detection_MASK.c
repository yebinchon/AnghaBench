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
struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int jack_detect; int /*<<< orphan*/  hp_work; } ;

/* Variables and functions */
 int GPIO_HP_JACK ; 
 int /*<<< orphan*/  JACK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_ice1712*) ; 

__attribute__((used)) static void FUNC5(struct snd_ice1712 *ice, bool on)
{
	struct psc724_spec *spec = ice->spec;

	if (spec->jack_detect == on)
		return;

	spec->jack_detect = on;
	if (on) {
		bool hp_connected = FUNC4(ice) & GPIO_HP_JACK;
		FUNC2(ice, hp_connected);
		FUNC3(&spec->hp_work,
					FUNC1(JACK_INTERVAL));
	} else
		FUNC0(&spec->hp_work);
}