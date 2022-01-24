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
 struct snd_kcontrol* FUNC0 (struct snd_card*,char* const) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol*,struct snd_kcontrol*) ; 

__attribute__((used)) static void FUNC2(struct snd_card *card,
		       struct snd_kcontrol *master, char * const *list)
{
	for (; *list; list++) {
		struct snd_kcontrol *slave = FUNC0(card, *list);
		if (slave)
			FUNC1(master, slave);
	}
}