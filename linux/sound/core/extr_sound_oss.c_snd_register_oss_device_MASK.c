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
struct snd_minor {int type; int card; int device; struct snd_card* card_ptr; void* private_data; struct file_operations const* f_ops; } ;
struct snd_card {scalar_t__ number; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
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
 struct snd_minor* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct file_operations const*,int,struct device*) ; 
 struct device* FUNC8 (struct snd_card*) ; 
 int FUNC9 (int,struct snd_card*,int) ; 
 struct snd_minor** snd_oss_minors ; 
 int /*<<< orphan*/  sound_oss_mutex ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(int type, struct snd_card *card, int dev,
			    const struct file_operations *f_ops, void *private_data)
{
	int minor = FUNC9(type, card, dev);
	int minor_unit;
	struct snd_minor *preg;
	int cidx = FUNC1(minor);
	int track2 = -1;
	int register1 = -1, register2 = -1;
	struct device *carddev = FUNC8(card);

	if (card && card->number >= SNDRV_MINOR_OSS_DEVICES)
		return 0; /* ignore silently */
	if (minor < 0)
		return minor;
	preg = FUNC4(sizeof(struct snd_minor), GFP_KERNEL);
	if (preg == NULL)
		return -ENOMEM;
	preg->type = type;
	preg->card = card ? card->number : -1;
	preg->device = dev;
	preg->f_ops = f_ops;
	preg->private_data = private_data;
	preg->card_ptr = card;
	FUNC5(&sound_oss_mutex);
	snd_oss_minors[minor] = preg;
	minor_unit = FUNC2(minor);
	switch (minor_unit) {
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
	register1 = FUNC7(f_ops, minor, carddev);
	if (register1 != minor)
		goto __end;
	if (track2 >= 0) {
		register2 = FUNC7(f_ops, track2,
							  carddev);
		if (register2 != track2)
			goto __end;
		snd_oss_minors[track2] = preg;
	}
	FUNC6(&sound_oss_mutex);
	return 0;

      __end:
      	if (register2 >= 0)
      		FUNC10(register2);
      	if (register1 >= 0)
      		FUNC10(register1);
	snd_oss_minors[minor] = NULL;
	FUNC6(&sound_oss_mutex);
	FUNC3(preg);
      	return -EBUSY;
}