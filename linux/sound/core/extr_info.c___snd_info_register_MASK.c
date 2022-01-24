#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_info_entry {scalar_t__ content; struct proc_dir_entry* p; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; TYPE_1__* parent; } ;
struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;
struct TYPE_4__ {struct proc_dir_entry* p; } ;
struct TYPE_3__ {struct proc_dir_entry* p; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ SNDRV_INFO_CONTENT_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct proc_dir_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc_dir_entry*,struct file_operations const*,struct snd_info_entry*) ; 
 struct proc_dir_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc_dir_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 struct file_operations snd_info_entry_operations ; 
 struct file_operations snd_info_text_entry_ops ; 
 TYPE_2__* snd_proc_root ; 

__attribute__((used)) static int FUNC7(struct snd_info_entry *entry)
{
	struct proc_dir_entry *root, *p = NULL;

	if (FUNC6(!entry))
		return -ENXIO;
	root = entry->parent == NULL ? snd_proc_root->p : entry->parent->p;
	FUNC1(&info_mutex);
	if (entry->p || !root)
		goto unlock;
	if (FUNC0(entry->mode)) {
		p = FUNC4(entry->name, entry->mode, root);
		if (!p) {
			FUNC2(&info_mutex);
			return -ENOMEM;
		}
	} else {
		const struct file_operations *ops;
		if (entry->content == SNDRV_INFO_CONTENT_DATA)
			ops = &snd_info_entry_operations;
		else
			ops = &snd_info_text_entry_ops;
		p = FUNC3(entry->name, entry->mode, root,
				     ops, entry);
		if (!p) {
			FUNC2(&info_mutex);
			return -ENOMEM;
		}
		FUNC5(p, entry->size);
	}
	entry->p = p;
 unlock:
	FUNC2(&info_mutex);
	return 0;
}