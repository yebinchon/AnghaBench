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
struct snd_ctl_elem_info {int dummy; } ;
struct pcxhr_mgr {scalar_t__ is_hr_stereo; scalar_t__ capture_chips; scalar_t__ board_has_aes1; } ;

/* Variables and functions */
 int HR22_CLOCK_TYPE_MAX ; 
 int PCXHR_CLOCK_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_ctl_elem_info*,int,int,char const**) ; 
 struct pcxhr_mgr* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_info *uinfo)
{
	static const char *textsPCXHR[7] = {
		"Internal", "WordClock", "AES Sync",
		"AES 1", "AES 2", "AES 3", "AES 4"
	};
	static const char *textsHR22[3] = {
		"Internal", "AES Sync", "AES 1"
	};
	const char **texts;
	struct pcxhr_mgr *mgr = FUNC2(kcontrol);
	int clock_items = 2;	/* at least Internal and AES Sync clock */
	if (mgr->board_has_aes1) {
		clock_items += mgr->capture_chips;	/* add AES x */
		if (!mgr->is_hr_stereo)
			clock_items += 1;		/* add word clock */
	}
	if (mgr->is_hr_stereo) {
		texts = textsHR22;
		FUNC0(clock_items > (HR22_CLOCK_TYPE_MAX+1));
	} else {
		texts = textsPCXHR;
		FUNC0(clock_items > (PCXHR_CLOCK_TYPE_MAX+1));
	}
	return FUNC1(uinfo, 1, clock_items, texts);
}