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
struct snd_monitor_file {int /*<<< orphan*/  list; int /*<<< orphan*/  shutdown_list; int /*<<< orphan*/ * disconnected_f_op; struct file* file; } ;
struct snd_card {int /*<<< orphan*/  files_lock; int /*<<< orphan*/  card_dev; int /*<<< orphan*/  files_list; scalar_t__ shutdown; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_monitor_file*) ; 
 struct snd_monitor_file* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct snd_card *card, struct file *file)
{
	struct snd_monitor_file *mfile;

	mfile = FUNC3(sizeof(*mfile), GFP_KERNEL);
	if (mfile == NULL)
		return -ENOMEM;
	mfile->file = file;
	mfile->disconnected_f_op = NULL;
	FUNC0(&mfile->shutdown_list);
	FUNC5(&card->files_lock);
	if (card->shutdown) {
		FUNC6(&card->files_lock);
		FUNC2(mfile);
		return -ENODEV;
	}
	FUNC4(&mfile->list, &card->files_list);
	FUNC1(&card->card_dev);
	FUNC6(&card->files_lock);
	return 0;
}