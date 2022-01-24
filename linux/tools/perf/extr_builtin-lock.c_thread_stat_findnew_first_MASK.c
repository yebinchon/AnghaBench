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
typedef  int /*<<< orphan*/  u32 ;
struct thread_stat {int /*<<< orphan*/  rb; int /*<<< orphan*/  seq_list; int /*<<< orphan*/  tid; } ;
struct TYPE_3__ {int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_stat_findnew ; 
 int /*<<< orphan*/  thread_stat_findnew_after_first ; 
 TYPE_1__ thread_stats ; 
 struct thread_stat* FUNC4 (int) ; 

__attribute__((used)) static struct thread_stat *FUNC5(u32 tid)
{
	struct thread_stat *st;

	st = FUNC4(sizeof(struct thread_stat));
	if (!st) {
		FUNC1("memory allocation failed\n");
		return NULL;
	}
	st->tid = tid;
	FUNC0(&st->seq_list);

	FUNC3(&st->rb, NULL, &thread_stats.rb_node);
	FUNC2(&st->rb, &thread_stats);

	thread_stat_findnew = thread_stat_findnew_after_first;
	return st;
}