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
struct snd_ac97 {unsigned short* regs; int scaps; } ;

/* Variables and functions */
 unsigned short AC97_EA_PRI ; 
 unsigned short AC97_EA_PRJ ; 
 unsigned short AC97_EA_PRK ; 
 unsigned short AC97_EA_PRL ; 
 size_t AC97_EXTENDED_STATUS ; 
 size_t AC97_HEADPHONE ; 
 size_t AC97_MASTER ; 
 unsigned short AC97_PD_EAPD ; 
 unsigned short AC97_PD_PR0 ; 
 unsigned short AC97_PD_PR1 ; 
 unsigned short AC97_PD_PR2 ; 
 unsigned short AC97_PD_PR3 ; 
 unsigned short AC97_PD_PR4 ; 
 unsigned short AC97_PD_PR5 ; 
 unsigned short AC97_PD_PR6 ; 
 size_t AC97_POWERDOWN ; 
 int AC97_SCAP_CENTER_LFE_DAC ; 
 int AC97_SCAP_EAPD_LED ; 
 int AC97_SCAP_INV_EAPD ; 
 int AC97_SCAP_SURROUND_DAC ; 
 scalar_t__ FUNC0 (struct snd_ac97*) ; 
 scalar_t__ FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,size_t,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97)
{
	unsigned short power;

	if (FUNC0(ac97)) {
		/* some codecs have stereo mute bits */
		FUNC2(ac97, AC97_MASTER, 0x9f9f);
		FUNC2(ac97, AC97_HEADPHONE, 0x9f9f);
	}

	/* surround, CLFE, mic powerdown */
	power = ac97->regs[AC97_EXTENDED_STATUS];
	if (ac97->scaps & AC97_SCAP_SURROUND_DAC)
		power |= AC97_EA_PRJ;
	if (ac97->scaps & AC97_SCAP_CENTER_LFE_DAC)
		power |= AC97_EA_PRI | AC97_EA_PRK;
	power |= AC97_EA_PRL;
	FUNC2(ac97, AC97_EXTENDED_STATUS, power);

	/* powerdown external amplifier */
	if (ac97->scaps & AC97_SCAP_INV_EAPD)
		power = ac97->regs[AC97_POWERDOWN] & ~AC97_PD_EAPD;
	else if (! (ac97->scaps & AC97_SCAP_EAPD_LED))
		power = ac97->regs[AC97_POWERDOWN] | AC97_PD_EAPD;
	power |= AC97_PD_PR6;	/* Headphone amplifier powerdown */
	power |= AC97_PD_PR0 | AC97_PD_PR1;	/* ADC & DAC powerdown */
	FUNC2(ac97, AC97_POWERDOWN, power);
	FUNC3(100);
	power |= AC97_PD_PR2;	/* Analog Mixer powerdown (Vref on) */
	FUNC2(ac97, AC97_POWERDOWN, power);
	if (FUNC1(ac97)) {
		power |= AC97_PD_PR3;	/* Analog Mixer powerdown */
		FUNC2(ac97, AC97_POWERDOWN, power);
		FUNC3(100);
		/* AC-link powerdown, internal Clk disable */
		/* FIXME: this may cause click noises on some boards */
		power |= AC97_PD_PR4 | AC97_PD_PR5;
		FUNC2(ac97, AC97_POWERDOWN, power);
	}
}