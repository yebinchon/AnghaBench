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
typedef  scalar_t__ u64 ;
struct thread_trace {scalar_t__ entry_time; int /*<<< orphan*/  syscall_stats; } ;
struct stats {int dummy; } ;
struct perf_sample {scalar_t__ time; } ;
struct int_node {struct stats* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stats*) ; 
 struct int_node* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct stats* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct stats*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct thread_trace *ttrace,
				 int id, struct perf_sample *sample)
{
	struct int_node *inode;
	struct stats *stats;
	u64 duration = 0;

	inode = FUNC1(ttrace->syscall_stats, id);
	if (inode == NULL)
		return;

	stats = inode->priv;
	if (stats == NULL) {
		stats = FUNC2(sizeof(struct stats));
		if (stats == NULL)
			return;
		FUNC0(stats);
		inode->priv = stats;
	}

	if (ttrace->entry_time && sample->time > ttrace->entry_time)
		duration = sample->time - ttrace->entry_time;

	FUNC3(stats, duration);
}