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
struct seq_operations {int dummy; } ;
struct seq_file {void* private; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,struct seq_operations const*) ; 

void *FUNC3(struct file *f, const struct seq_operations *ops,
		int psize)
{
	int rc;
	void *private;
	struct seq_file *seq;

	private = FUNC1(psize, GFP_KERNEL_ACCOUNT);
	if (private == NULL)
		goto out;

	rc = FUNC2(f, ops);
	if (rc < 0)
		goto out_free;

	seq = f->private_data;
	seq->private = private;
	return private;

out_free:
	FUNC0(private);
out:
	return NULL;
}