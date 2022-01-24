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
struct snd_minor {int type; int card; int device; struct device* dev; struct snd_card* card_ptr; void* private_data; struct file_operations const* f_ops; } ;
struct snd_card {int number; } ;
struct file_operations {int dummy; } ;
struct device {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_minor*) ; 
 struct snd_minor* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int,struct snd_card*,int) ; 
 struct snd_minor** snd_minors ; 
 int /*<<< orphan*/  sound_mutex ; 

int FUNC8(int type, struct snd_card *card, int dev,
			const struct file_operations *f_ops,
			void *private_data, struct device *device)
{
	int minor;
	int err = 0;
	struct snd_minor *preg;

	if (FUNC6(!device))
		return -EINVAL;

	preg = FUNC3(sizeof *preg, GFP_KERNEL);
	if (preg == NULL)
		return -ENOMEM;
	preg->type = type;
	preg->card = card ? card->number : -1;
	preg->device = dev;
	preg->f_ops = f_ops;
	preg->private_data = private_data;
	preg->card_ptr = card;
	FUNC4(&sound_mutex);
	minor = FUNC7(type, card, dev);
	if (minor < 0) {
		err = minor;
		goto error;
	}

	preg->dev = device;
	device->devt = FUNC0(major, minor);
	err = FUNC1(device);
	if (err < 0)
		goto error;

	snd_minors[minor] = preg;
 error:
	FUNC5(&sound_mutex);
	if (err < 0)
		FUNC2(preg);
	return err;
}