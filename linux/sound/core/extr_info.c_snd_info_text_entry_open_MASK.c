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
struct snd_info_private_data {struct snd_info_private_data* rbuffer; } ;
struct snd_info_entry {int /*<<< orphan*/  module; scalar_t__ size; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_info_entry* FUNC0 (struct inode*) ; 
 int FUNC1 (struct snd_info_entry*,struct snd_info_private_data**) ; 
 int /*<<< orphan*/  info_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_private_data*) ; 
 struct snd_info_private_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct file*,int /*<<< orphan*/ ,struct snd_info_private_data*) ; 
 int FUNC8 (struct file*,int /*<<< orphan*/ ,struct snd_info_private_data*,scalar_t__) ; 
 int /*<<< orphan*/  snd_info_seq_show ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct snd_info_entry *entry = FUNC0(inode);
	struct snd_info_private_data *data;
	int err;

	FUNC5(&info_mutex);
	err = FUNC1(entry, &data);
	if (err < 0)
		goto unlock;

	data->rbuffer = FUNC3(sizeof(*data->rbuffer), GFP_KERNEL);
	if (!data->rbuffer) {
		err = -ENOMEM;
		goto error;
	}
	if (entry->size)
		err = FUNC8(file, snd_info_seq_show, data,
				       entry->size);
	else
		err = FUNC7(file, snd_info_seq_show, data);
	if (err < 0)
		goto error;
	FUNC6(&info_mutex);
	return 0;

 error:
	FUNC2(data->rbuffer);
	FUNC2(data);
	FUNC4(entry->module);
 unlock:
	FUNC6(&info_mutex);
	return err;
}