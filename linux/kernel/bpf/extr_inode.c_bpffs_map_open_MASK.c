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
struct seq_file {struct map_iter* private; } ;
struct map_iter {int dummy; } ;
struct inode {struct bpf_map* i_private; } ;
struct file {struct seq_file* private_data; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  bpffs_map_seq_ops ; 
 struct map_iter* FUNC0 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct map_iter*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct bpf_map *map = inode->i_private;
	struct map_iter *iter;
	struct seq_file *m;
	int err;

	iter = FUNC0(map);
	if (!iter)
		return -ENOMEM;

	err = FUNC2(file, &bpffs_map_seq_ops);
	if (err) {
		FUNC1(iter);
		return err;
	}

	m = file->private_data;
	m->private = iter;

	return 0;
}