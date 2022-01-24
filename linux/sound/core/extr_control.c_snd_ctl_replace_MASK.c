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
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_ADD_ON_REPLACE ; 
 int /*<<< orphan*/  CTL_REPLACE ; 
 int FUNC0 (struct snd_card*,struct snd_kcontrol*,int /*<<< orphan*/ ) ; 

int FUNC1(struct snd_card *card, struct snd_kcontrol *kcontrol,
		    bool add_on_replace)
{
	return FUNC0(card, kcontrol,
				   add_on_replace ? CTL_ADD_ON_REPLACE : CTL_REPLACE);
}