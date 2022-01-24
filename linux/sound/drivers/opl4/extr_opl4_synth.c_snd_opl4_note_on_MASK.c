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
struct snd_opl4 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  on_voices; } ;
struct snd_midi_channel {int midi_program; scalar_t__ drum_channel; } ;
struct opl4_voice {int note; int velocity; int reg_f_number; int reg_misc; scalar_t__ number; struct opl4_sound const* sound; int /*<<< orphan*/  reg_lfo_vibrato; int /*<<< orphan*/  level_direct; struct snd_midi_channel* chan; int /*<<< orphan*/  list; } ;
struct opl4_sound {int tone; int /*<<< orphan*/  reg_lfo_vibrato; } ;
struct opl4_region_ptr {int count; TYPE_1__* regions; } ;
struct TYPE_2__ {int key_min; int key_max; struct opl4_sound sound; } ;

/* Variables and functions */
 int OPL4_KEY_ON_BIT ; 
 int /*<<< orphan*/  OPL4_LEVEL_DIRECT_BIT ; 
 int OPL4_LFO_RESET_BIT ; 
 scalar_t__ OPL4_REG_F_NUMBER ; 
 scalar_t__ OPL4_REG_MISC ; 
 scalar_t__ OPL4_REG_TONE_NUMBER ; 
 int OPL4_TONE_NUMBER_BIT8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct opl4_voice* FUNC1 (struct snd_opl4*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl4*,struct opl4_voice*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl4*,struct opl4_voice*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_opl4*,struct opl4_voice*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_opl4*,struct opl4_voice*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_opl4*,struct opl4_voice*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_opl4*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_opl4*,scalar_t__,int) ; 
 struct opl4_region_ptr* snd_yrw801_regions ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(void *private_data, int note, int vel, struct snd_midi_channel *chan)
{
	struct snd_opl4 *opl4 = private_data;
	const struct opl4_region_ptr *regions;
	struct opl4_voice *voice[2];
	const struct opl4_sound *sound[2];
	int voices = 0, i;
	unsigned long flags;

	/* determine the number of voices and voice parameters */
	i = chan->drum_channel ? 0x80 : (chan->midi_program & 0x7f);
	regions = &snd_yrw801_regions[i];
	for (i = 0; i < regions->count; i++) {
		if (note >= regions->regions[i].key_min &&
		    note <= regions->regions[i].key_max) {
			sound[voices] = &regions->regions[i].sound;
			if (++voices >= 2)
				break;
		}
	}

	/* allocate and initialize the needed voices */
	FUNC9(&opl4->reg_lock, flags);
	for (i = 0; i < voices; i++) {
		voice[i] = FUNC1(opl4);
		FUNC0(&voice[i]->list, &opl4->on_voices);
		voice[i]->chan = chan;
		voice[i]->note = note;
		voice[i]->velocity = vel & 0x7f;
		voice[i]->sound = sound[i];
	}

	/* set tone number (triggers header loading) */
	for (i = 0; i < voices; i++) {
		voice[i]->reg_f_number =
			(sound[i]->tone >> 8) & OPL4_TONE_NUMBER_BIT8;
		FUNC8(opl4, OPL4_REG_F_NUMBER + voice[i]->number,
			       voice[i]->reg_f_number);
		FUNC8(opl4, OPL4_REG_TONE_NUMBER + voice[i]->number,
			       sound[i]->tone & 0xff);
	}

	/* set parameters which can be set while loading */
	for (i = 0; i < voices; i++) {
		voice[i]->reg_misc = OPL4_LFO_RESET_BIT;
		FUNC2(opl4, voice[i]);
		FUNC3(opl4, voice[i]);
		voice[i]->level_direct = OPL4_LEVEL_DIRECT_BIT;
		FUNC6(opl4, voice[i]);
	}
	FUNC10(&opl4->reg_lock, flags);

	/* wait for completion of loading */
	FUNC7(opl4);

	/* set remaining parameters */
	FUNC9(&opl4->reg_lock, flags);
	for (i = 0; i < voices; i++) {
		FUNC4(opl4, voice[i]);
		voice[i]->reg_lfo_vibrato = voice[i]->sound->reg_lfo_vibrato;
		FUNC5(opl4, voice[i]);
	}

	/* finally, switch on all voices */
	for (i = 0; i < voices; i++) {
		voice[i]->reg_misc =
			(voice[i]->reg_misc & 0x1f) | OPL4_KEY_ON_BIT;
		FUNC8(opl4, OPL4_REG_MISC + voice[i]->number,
			       voice[i]->reg_misc);
	}
	FUNC10(&opl4->reg_lock, flags);
}