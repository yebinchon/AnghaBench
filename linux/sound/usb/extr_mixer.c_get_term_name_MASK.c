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
struct usb_audio_term {int type; int id; scalar_t__ name; } ;
struct snd_usb_audio {int dummy; } ;
struct iterm_name_combo {int type; char* name; } ;

/* Variables and functions */
#define  UAC3_EXTENSION_UNIT 131 
#define  UAC3_MIXER_UNIT 130 
#define  UAC3_PROCESSING_UNIT 129 
#define  UAC3_SELECTOR_UNIT 128 
 struct iterm_name_combo* iterm_names ; 
 int FUNC0 (struct snd_usb_audio*,scalar_t__,unsigned char*,int) ; 
 int FUNC1 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct snd_usb_audio *chip, struct usb_audio_term *iterm,
			 unsigned char *name, int maxlen, int term_only)
{
	struct iterm_name_combo *names;
	int len;

	if (iterm->name) {
		len = FUNC0(chip, iterm->name,
						name, maxlen);
		if (len)
			return len;
	}

	/* virtual type - not a real terminal */
	if (iterm->type >> 16) {
		if (term_only)
			return 0;
		switch (iterm->type >> 16) {
		case UAC3_SELECTOR_UNIT:
			FUNC2(name, "Selector");
			return 8;
		case UAC3_PROCESSING_UNIT:
			FUNC2(name, "Process Unit");
			return 12;
		case UAC3_EXTENSION_UNIT:
			FUNC2(name, "Ext Unit");
			return 8;
		case UAC3_MIXER_UNIT:
			FUNC2(name, "Mixer");
			return 5;
		default:
			return FUNC1(name, "Unit %d", iterm->id);
		}
	}

	switch (iterm->type & 0xff00) {
	case 0x0100:
		FUNC2(name, "PCM");
		return 3;
	case 0x0200:
		FUNC2(name, "Mic");
		return 3;
	case 0x0400:
		FUNC2(name, "Headset");
		return 7;
	case 0x0500:
		FUNC2(name, "Phone");
		return 5;
	}

	for (names = iterm_names; names->type; names++) {
		if (names->type == iterm->type) {
			FUNC2(name, names->name);
			return FUNC3(names->name);
		}
	}

	return 0;
}