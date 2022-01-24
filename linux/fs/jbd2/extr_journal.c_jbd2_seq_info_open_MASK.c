#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transaction_stats_s {int dummy; } ;
struct seq_file {struct jbd2_stats_proc_session* private; } ;
struct jbd2_stats_proc_session {struct jbd2_stats_proc_session* stats; TYPE_1__* journal; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_history_lock; int /*<<< orphan*/  j_stats; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  jbd2_seq_info_ops ; 
 int /*<<< orphan*/  FUNC1 (struct jbd2_stats_proc_session*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jbd2_stats_proc_session*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	journal_t *journal = FUNC0(inode);
	struct jbd2_stats_proc_session *s;
	int rc, size;

	s = FUNC2(sizeof(*s), GFP_KERNEL);
	if (s == NULL)
		return -ENOMEM;
	size = sizeof(struct transaction_stats_s);
	s->stats = FUNC2(size, GFP_KERNEL);
	if (s->stats == NULL) {
		FUNC1(s);
		return -ENOMEM;
	}
	FUNC5(&journal->j_history_lock);
	FUNC3(s->stats, &journal->j_stats, size);
	s->journal = journal;
	FUNC6(&journal->j_history_lock);

	rc = FUNC4(file, &jbd2_seq_info_ops);
	if (rc == 0) {
		struct seq_file *m = file->private_data;
		m->private = s;
	} else {
		FUNC1(s->stats);
		FUNC1(s);
	}
	return rc;

}