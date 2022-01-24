#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct snd_rawmidi_file {TYPE_4__* output; TYPE_2__* input; } ;
struct snd_rawmidi {struct snd_card* card; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  open_wait; } ;
struct snd_card {int /*<<< orphan*/  module; scalar_t__ shutdown; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snd_rawmidi_file* private_data; } ;
struct TYPE_8__ {TYPE_3__* runtime; } ;
struct TYPE_7__ {int oss; } ;
struct TYPE_6__ {TYPE_1__* runtime; } ;
struct TYPE_5__ {int oss; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int O_APPEND ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_RAWMIDI ; 
 int /*<<< orphan*/  SNDRV_OSS_DEVICE_TYPE_MIDI ; 
 unsigned short SNDRV_RAWMIDI_LFLG_APPEND ; 
 int /*<<< orphan*/  SND_CTL_SUBDEV_RAWMIDI ; 
 int SOUND_MAJOR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rawmidi_file*) ; 
 struct snd_rawmidi_file* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct snd_rawmidi*,int,unsigned short,struct snd_rawmidi_file*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_card*) ; 
 int FUNC17 (struct snd_card*,int /*<<< orphan*/ ) ; 
 struct snd_rawmidi* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_rawmidi* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int snd_major ; 
 unsigned short FUNC20 (struct file*) ; 
 int FUNC21 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct inode *inode, struct file *file)
{
	int maj = FUNC1(inode);
	struct snd_card *card;
	int subdevice;
	unsigned short fflags;
	int err;
	struct snd_rawmidi *rmidi;
	struct snd_rawmidi_file *rawmidi_file = NULL;
	wait_queue_entry_t wait;

	if ((file->f_flags & O_APPEND) && !(file->f_flags & O_NONBLOCK))
		return -EINVAL;		/* invalid combination */

	err = FUNC21(inode, file);
	if (err < 0)
		return err;

	if (maj == snd_major) {
		rmidi = FUNC18(FUNC2(inode),
					      SNDRV_DEVICE_TYPE_RAWMIDI);
#ifdef CONFIG_SND_OSSEMUL
	} else if (maj == SOUND_MAJOR) {
		rmidi = snd_lookup_oss_minor_data(iminor(inode),
						  SNDRV_OSS_DEVICE_TYPE_MIDI);
#endif
	} else
		return -ENXIO;

	if (rmidi == NULL)
		return -ENODEV;

	if (!FUNC22(rmidi->card->module)) {
		FUNC16(rmidi->card);
		return -ENXIO;
	}

	FUNC7(&rmidi->open_mutex);
	card = rmidi->card;
	err = FUNC14(card, file);
	if (err < 0)
		goto __error_card;
	fflags = FUNC20(file);
	if ((file->f_flags & O_APPEND) || maj == SOUND_MAJOR) /* OSS emul? */
		fflags |= SNDRV_RAWMIDI_LFLG_APPEND;
	rawmidi_file = FUNC5(sizeof(*rawmidi_file), GFP_KERNEL);
	if (rawmidi_file == NULL) {
		err = -ENOMEM;
		goto __error;
	}
	FUNC3(&wait, current);
	FUNC0(&rmidi->open_wait, &wait);
	while (1) {
		subdevice = FUNC17(card, SND_CTL_SUBDEV_RAWMIDI);
		err = FUNC9(rmidi, subdevice, fflags, rawmidi_file);
		if (err >= 0)
			break;
		if (err == -EAGAIN) {
			if (file->f_flags & O_NONBLOCK) {
				err = -EBUSY;
				break;
			}
		} else
			break;
		FUNC12(TASK_INTERRUPTIBLE);
		FUNC8(&rmidi->open_mutex);
		FUNC11();
		FUNC7(&rmidi->open_mutex);
		if (rmidi->card->shutdown) {
			err = -ENODEV;
			break;
		}
		if (FUNC13(current)) {
			err = -ERESTARTSYS;
			break;
		}
	}
	FUNC10(&rmidi->open_wait, &wait);
	if (err < 0) {
		FUNC4(rawmidi_file);
		goto __error;
	}
#ifdef CONFIG_SND_OSSEMUL
	if (rawmidi_file->input && rawmidi_file->input->runtime)
		rawmidi_file->input->runtime->oss = (maj == SOUND_MAJOR);
	if (rawmidi_file->output && rawmidi_file->output->runtime)
		rawmidi_file->output->runtime->oss = (maj == SOUND_MAJOR);
#endif
	file->private_data = rawmidi_file;
	FUNC8(&rmidi->open_mutex);
	FUNC16(rmidi->card);
	return 0;

 __error:
	FUNC15(card, file);
 __error_card:
	FUNC8(&rmidi->open_mutex);
	FUNC6(rmidi->card->module);
	FUNC16(rmidi->card);
	return err;
}