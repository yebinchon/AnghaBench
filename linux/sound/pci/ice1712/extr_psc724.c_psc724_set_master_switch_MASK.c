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
struct psc724_spec {int mute_all; } ;

/* Variables and functions */
 unsigned int GPIO_MUTE_ALL ; 
 unsigned int GPIO_MUTE_SUR ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice, bool on)
{
	unsigned int bits = FUNC0(ice);
	struct psc724_spec *spec = ice->spec;

	spec->mute_all = !on;
	if (on)
		bits &= ~(GPIO_MUTE_ALL | GPIO_MUTE_SUR);
	else
		bits |= GPIO_MUTE_ALL | GPIO_MUTE_SUR;
	FUNC1(ice, bits);
}