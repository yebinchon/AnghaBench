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
struct snd_ctl_file {int* preferred_subdevice; int /*<<< orphan*/  list; int /*<<< orphan*/  pid; struct snd_card* card; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  change_sleep; int /*<<< orphan*/  events; } ;
struct snd_card {int /*<<< orphan*/  module; int /*<<< orphan*/  ctl_files_rwlock; int /*<<< orphan*/  ctl_files; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctl_file* private_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_CONTROL ; 
 int SND_CTL_SUBDEV_ITEMS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_ctl_file* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_card*) ; 
 struct snd_card* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct file *file)
{
	unsigned long flags;
	struct snd_card *card;
	struct snd_ctl_file *ctl;
	int i, err;

	err = FUNC12(inode, file);
	if (err < 0)
		return err;

	card = FUNC10(FUNC2(inode), SNDRV_DEVICE_TYPE_CONTROL);
	if (!card) {
		err = -ENODEV;
		goto __error1;
	}
	err = FUNC7(card, file);
	if (err < 0) {
		err = -ENODEV;
		goto __error1;
	}
	if (!FUNC14(card->module)) {
		err = -EFAULT;
		goto __error2;
	}
	ctl = FUNC4(sizeof(*ctl), GFP_KERNEL);
	if (ctl == NULL) {
		err = -ENOMEM;
		goto __error;
	}
	FUNC0(&ctl->events);
	FUNC3(&ctl->change_sleep);
	FUNC11(&ctl->read_lock);
	ctl->card = card;
	for (i = 0; i < SND_CTL_SUBDEV_ITEMS; i++)
		ctl->preferred_subdevice[i] = -1;
	ctl->pid = FUNC1(FUNC13(current));
	file->private_data = ctl;
	FUNC15(&card->ctl_files_rwlock, flags);
	FUNC5(&ctl->list, &card->ctl_files);
	FUNC16(&card->ctl_files_rwlock, flags);
	FUNC9(card);
	return 0;

      __error:
	FUNC6(card->module);
      __error2:
	FUNC8(card, file);
      __error1:
	if (card)
		FUNC9(card);
      	return err;
}