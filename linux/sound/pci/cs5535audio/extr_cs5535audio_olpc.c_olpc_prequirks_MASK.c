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
struct snd_card {int dummy; } ;
struct snd_ac97_template {int /*<<< orphan*/  scaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_SCAP_INV_EAPD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct snd_card *card,
		    struct snd_ac97_template *ac97)
{
	if (!FUNC0())
		return;

	/* invert EAPD if on an OLPC B3 or higher */
	if (FUNC1(FUNC2(0xb3)))
		ac97->scaps |= AC97_SCAP_INV_EAPD;
}