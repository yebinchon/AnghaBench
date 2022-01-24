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
struct snd_mixer_oss_file {int /*<<< orphan*/ * mixer; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  module; int /*<<< orphan*/ * mixer_oss; } ;
struct inode {int dummy; } ;
struct file {struct snd_mixer_oss_file* private_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_OSS_DEVICE_TYPE_MIXER ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer_oss_file*) ; 
 struct snd_mixer_oss_file* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 int FUNC4 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_card*) ; 
 struct snd_card* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct snd_card *card;
	struct snd_mixer_oss_file *fmixer;
	int err;

	err = FUNC3(inode, file);
	if (err < 0)
		return err;

	card = FUNC7(FUNC0(inode),
					 SNDRV_OSS_DEVICE_TYPE_MIXER);
	if (card == NULL)
		return -ENODEV;
	if (card->mixer_oss == NULL) {
		FUNC6(card);
		return -ENODEV;
	}
	err = FUNC4(card, file);
	if (err < 0) {
		FUNC6(card);
		return err;
	}
	fmixer = FUNC2(sizeof(*fmixer), GFP_KERNEL);
	if (fmixer == NULL) {
		FUNC5(card, file);
		FUNC6(card);
		return -ENOMEM;
	}
	fmixer->card = card;
	fmixer->mixer = card->mixer_oss;
	file->private_data = fmixer;
	if (!FUNC8(card->module)) {
		FUNC1(fmixer);
		FUNC5(card, file);
		FUNC6(card);
		return -EFAULT;
	}
	FUNC6(card);
	return 0;
}