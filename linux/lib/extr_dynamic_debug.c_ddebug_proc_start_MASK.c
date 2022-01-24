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
struct seq_file {struct ddebug_iter* private; } ;
struct ddebug_iter {int dummy; } ;
typedef  void _ddebug ;
typedef  int loff_t ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 void* FUNC0 (struct ddebug_iter*) ; 
 void* FUNC1 (struct ddebug_iter*) ; 
 int /*<<< orphan*/  ddebug_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct seq_file*,unsigned long long) ; 

__attribute__((used)) static void *FUNC4(struct seq_file *m, loff_t *pos)
{
	struct ddebug_iter *iter = m->private;
	struct _ddebug *dp;
	int n = *pos;

	FUNC3("called m=%p *pos=%lld\n", m, (unsigned long long)*pos);

	FUNC2(&ddebug_lock);

	if (!n)
		return SEQ_START_TOKEN;
	if (n < 0)
		return NULL;
	dp = FUNC0(iter);
	while (dp != NULL && --n > 0)
		dp = FUNC1(iter);
	return dp;
}