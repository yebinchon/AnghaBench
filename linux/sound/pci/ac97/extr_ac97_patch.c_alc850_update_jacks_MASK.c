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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_ALC850_JACK_SELECT ; 
 int /*<<< orphan*/  AC97_ALC850_MISC1 ; 
 int /*<<< orphan*/  AC97_ALC850_MULTICH ; 
 int FUNC0 (struct snd_ac97*) ; 
 int FUNC1 (struct snd_ac97*) ; 
 int FUNC2 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97)
{
	int shared;
	int aux_is_back_surround;
	
	/* shared Line-In / Surround Out */
	shared = FUNC2(ac97);
	/* SURR 1kOhm (bit4), Amp (bit5) */
	FUNC3(ac97, AC97_ALC850_MISC1, (1<<4)|(1<<5),
			     shared ? (1<<5) : (1<<4));
	/* LINE-IN = 0, SURROUND = 2 */
	FUNC3(ac97, AC97_ALC850_JACK_SELECT, 7 << 12,
			     shared ? (2<<12) : (0<<12));
	/* update shared Mic In / Center/LFE Out */
	shared = FUNC1(ac97);
	/* Vref disable (bit12), 1kOhm (bit13) */
	FUNC3(ac97, AC97_ALC850_MISC1, (1<<12)|(1<<13),
			     shared ? (1<<12) : (1<<13));
	/* MIC-IN = 1, CENTER-LFE = 5 */
	FUNC3(ac97, AC97_ALC850_JACK_SELECT, 7 << 4,
			     shared ? (5<<4) : (1<<4));

	aux_is_back_surround = FUNC0(ac97);
	/* Aux is Back Surround */
	FUNC3(ac97, AC97_ALC850_MULTICH, 1 << 10,
				 aux_is_back_surround ? (1<<10) : (0<<10));
}