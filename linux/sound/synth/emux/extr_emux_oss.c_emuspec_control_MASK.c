#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_midi_channel {unsigned short midi_pressure; int drum_channel; } ;
struct TYPE_3__ {int max_channels; struct snd_midi_channel* channels; } ;
struct snd_emux_port {short volume_atten; unsigned int drum_flags; short* ctrls; TYPE_1__ chset; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* oss_ioctl ) (struct snd_emux*,int,unsigned short,short) ;} ;
struct snd_emux {TYPE_2__ ops; int /*<<< orphan*/  sflist; } ;

/* Variables and functions */
 unsigned short EMUX_MD_END ; 
 int /*<<< orphan*/  MIDI_CTL_ALL_NOTES_OFF ; 
 int /*<<< orphan*/  MIDI_CTL_ALL_SOUNDS_OFF ; 
 int SNDRV_EMUX_UPDATE_FM2FRQ2 ; 
 int SNDRV_EMUX_UPDATE_FMMOD ; 
 int /*<<< orphan*/  SNDRV_EMUX_UPDATE_VOLUME ; 
#define  _EMUX_OSS_CHANNEL_MODE 140 
#define  _EMUX_OSS_CHN_PRESSURE 139 
#define  _EMUX_OSS_DEBUG_MODE 138 
#define  _EMUX_OSS_DRUM_CHANNELS 137 
#define  _EMUX_OSS_INITIAL_VOLUME 136 
#define  _EMUX_OSS_MISC_MODE 135 
#define  _EMUX_OSS_NOTEOFF_ALL 134 
#define  _EMUX_OSS_RELEASE_ALL 133 
#define  _EMUX_OSS_REMOVE_LAST_SAMPLES 132 
#define  _EMUX_OSS_RESET_CHANNEL 131 
#define  _EMUX_OSS_SEND_EFFECT 130 
#define  _EMUX_OSS_TERMINATE_ALL 129 
#define  _EMUX_OSS_TERMINATE_CHANNEL 128 
 int /*<<< orphan*/  FUNC0 (struct snd_emux*,struct snd_emux_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emux_port*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emux_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux_port*,struct snd_midi_channel*,unsigned short,short) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emux_port*,struct snd_midi_channel*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emux_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emux*,int,unsigned short,short) ; 

__attribute__((used)) static void
FUNC9(struct snd_emux *emu, struct snd_emux_port *port, int cmd,
		unsigned char *event, int atomic, int hop)
{
	int voice;
	unsigned short p1;
	short p2;
	int i;
	struct snd_midi_channel *chan;

	voice = event[3];
	if (voice < 0 || voice >= port->chset.max_channels)
		chan = NULL;
	else
		chan = &port->chset.channels[voice];

	p1 = *(unsigned short *) &event[4];
	p2 = *(short *) &event[6];

	switch (cmd) {
#if 0 /* don't do this atomically */
	case _EMUX_OSS_REMOVE_LAST_SAMPLES:
		snd_soundfont_remove_unlocked(emu->sflist);
		break;
#endif
	case _EMUX_OSS_SEND_EFFECT:
		if (chan)
			FUNC3(port, chan, p1, p2);
		break;
		
	case _EMUX_OSS_TERMINATE_ALL:
		FUNC4(emu);
		break;

	case _EMUX_OSS_TERMINATE_CHANNEL:
		/*snd_emux_mute_channel(emu, chan);*/
		break;
	case _EMUX_OSS_RESET_CHANNEL:
		/*snd_emux_channel_init(chset, chan);*/
		break;

	case _EMUX_OSS_RELEASE_ALL:
		FUNC0(emu, port, voice, MIDI_CTL_ALL_NOTES_OFF, 0, atomic, hop);
		break;
	case _EMUX_OSS_NOTEOFF_ALL:
		FUNC0(emu, port, voice, MIDI_CTL_ALL_SOUNDS_OFF, 0, atomic, hop);
		break;

	case _EMUX_OSS_INITIAL_VOLUME:
		if (p2) {
			port->volume_atten = (short)p1;
			FUNC6(port, SNDRV_EMUX_UPDATE_VOLUME);
		}
		break;

	case _EMUX_OSS_CHN_PRESSURE:
		if (chan) {
			chan->midi_pressure = p1;
			FUNC5(port, chan, SNDRV_EMUX_UPDATE_FMMOD|SNDRV_EMUX_UPDATE_FM2FRQ2);
		}
		break;

	case _EMUX_OSS_CHANNEL_MODE:
		FUNC1(port, p1);
		FUNC2(port);
		break;

	case _EMUX_OSS_DRUM_CHANNELS:
		port->drum_flags = *(unsigned int*)&event[4];
		for (i = 0; i < port->chset.max_channels; i++) {
			chan = &port->chset.channels[i];
			chan->drum_channel = ((port->drum_flags >> i) & 1) ? 1 : 0;
		}
		break;

	case _EMUX_OSS_MISC_MODE:
		if (p1 < EMUX_MD_END)
			port->ctrls[p1] = p2;
		break;
	case _EMUX_OSS_DEBUG_MODE:
		break;

	default:
		if (emu->ops.oss_ioctl)
			emu->ops.oss_ioctl(emu, cmd, p1, p2);
		break;
	}
}