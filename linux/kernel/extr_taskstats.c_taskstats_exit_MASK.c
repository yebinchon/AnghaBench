#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct taskstats {int dummy; } ;
struct task_struct {TYPE_1__* signal; } ;
struct sk_buff {int dummy; } ;
struct listener_list {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASKSTATS_CMD_NEW ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_PID ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_TGID ; 
 int /*<<< orphan*/  family_registered ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct task_struct*,struct taskstats*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  listener_array ; 
 int /*<<< orphan*/  FUNC3 (struct taskstats*,int /*<<< orphan*/ ,int) ; 
 struct taskstats* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff**,size_t) ; 
 struct listener_list* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct listener_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,int /*<<< orphan*/ *) ; 
 size_t FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

void FUNC13(struct task_struct *tsk, int group_dead)
{
	int rc;
	struct listener_list *listeners;
	struct taskstats *stats;
	struct sk_buff *rep_skb;
	size_t size;
	int is_thread_group;

	if (!family_registered)
		return;

	/*
	 * Size includes space for nested attributes
	 */
	size = FUNC11();

	is_thread_group = !!FUNC12(tsk);
	if (is_thread_group) {
		/* PID + STATS + TGID + STATS */
		size = 2 * size;
		/* fill the tsk->signal->stats structure */
		FUNC1(tsk);
	}

	listeners = FUNC7(&listener_array);
	if (FUNC2(&listeners->list))
		return;

	rc = FUNC6(NULL, TASKSTATS_CMD_NEW, &rep_skb, size);
	if (rc < 0)
		return;

	stats = FUNC4(rep_skb, TASKSTATS_TYPE_PID,
			 FUNC9(tsk, &init_pid_ns));
	if (!stats)
		goto err;

	FUNC0(&init_user_ns, &init_pid_ns, tsk, stats);

	/*
	 * Doesn't matter if tsk is the leader or the last group member leaving
	 */
	if (!is_thread_group || !group_dead)
		goto send;

	stats = FUNC4(rep_skb, TASKSTATS_TYPE_TGID,
			 FUNC10(tsk, &init_pid_ns));
	if (!stats)
		goto err;

	FUNC3(stats, tsk->signal->stats, sizeof(*stats));

send:
	FUNC8(rep_skb, listeners);
	return;
err:
	FUNC5(rep_skb);
}