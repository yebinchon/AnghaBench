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
struct snd_ac97 {int id; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int AC97_ID_ALC658D ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*,char*) ; 
 int /*<<< orphan*/  snd_ac97_alc_jack_detect ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 *ac97)
{
	if ((ac97->id & 0xffffff00) != 0x414c4700) {
		FUNC0(ac97,
			 "ac97_quirk ALC_JACK is only for Realtek codecs\n");
		return -EINVAL;
	}
	FUNC2(ac97, 0x7a, 0x20, 0x20); /* select jack detect function */
	FUNC2(ac97, 0x7a, 0x01, 0x01); /* Line-out auto mute */
	if (ac97->id == AC97_ID_ALC658D)
		FUNC2(ac97, 0x74, 0x0800, 0x0800);
	return FUNC3(ac97->bus->card, FUNC1(&snd_ac97_alc_jack_detect, ac97));
}