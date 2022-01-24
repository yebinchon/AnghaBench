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
struct snd_minor {int dummy; } ;
struct snd_card {scalar_t__ number; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_MINOR_OSS_AUDIO ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ SNDRV_MINOR_OSS_DEVICES ; 
 int /*<<< orphan*/  SNDRV_MINOR_OSS_DMMIDI ; 
 int /*<<< orphan*/  SNDRV_MINOR_OSS_DMMIDI1 ; 
#define  SNDRV_MINOR_OSS_MIDI 130 
#define  SNDRV_MINOR_OSS_MIDI1 129 
#define  SNDRV_MINOR_OSS_PCM 128 
 int /*<<< orphan*/  FUNC3 (struct snd_minor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,struct snd_card*,int) ; 
 struct snd_minor** snd_oss_minors ; 
 int /*<<< orphan*/  sound_oss_mutex ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int type, struct snd_card *card, int dev)
{
	int minor = FUNC6(type, card, dev);
	int cidx = FUNC1(minor);
	int track2 = -1;
	struct snd_minor *mptr;

	if (card && card->number >= SNDRV_MINOR_OSS_DEVICES)
		return 0;
	if (minor < 0)
		return minor;
	FUNC4(&sound_oss_mutex);
	mptr = snd_oss_minors[minor];
	if (mptr == NULL) {
		FUNC5(&sound_oss_mutex);
		return -ENOENT;
	}
	FUNC7(minor);
	switch (FUNC2(minor)) {
	case SNDRV_MINOR_OSS_PCM:
		track2 = FUNC0(cidx, SNDRV_MINOR_OSS_AUDIO);
		break;
	case SNDRV_MINOR_OSS_MIDI:
		track2 = FUNC0(cidx, SNDRV_MINOR_OSS_DMMIDI);
		break;
	case SNDRV_MINOR_OSS_MIDI1:
		track2 = FUNC0(cidx, SNDRV_MINOR_OSS_DMMIDI1);
		break;
	}
	if (track2 >= 0) {
		FUNC7(track2);
		snd_oss_minors[track2] = NULL;
	}
	snd_oss_minors[minor] = NULL;
	FUNC5(&sound_oss_mutex);
	FUNC3(mptr);
	return 0;
}