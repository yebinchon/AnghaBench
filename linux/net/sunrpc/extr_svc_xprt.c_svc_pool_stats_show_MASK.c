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
struct TYPE_2__ {int /*<<< orphan*/  threads_timedout; int /*<<< orphan*/  threads_woken; int /*<<< orphan*/  sockets_queued; int /*<<< orphan*/  packets; } ;
struct svc_pool {TYPE_1__ sp_stats; int /*<<< orphan*/  sp_id; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *p)
{
	struct svc_pool *pool = p;

	if (p == SEQ_START_TOKEN) {
		FUNC2(m, "# pool packets-arrived sockets-enqueued threads-woken threads-timedout\n");
		return 0;
	}

	FUNC1(m, "%u %lu %lu %lu %lu\n",
		pool->sp_id,
		(unsigned long)FUNC0(&pool->sp_stats.packets),
		pool->sp_stats.sockets_queued,
		(unsigned long)FUNC0(&pool->sp_stats.threads_woken),
		(unsigned long)FUNC0(&pool->sp_stats.threads_timedout));

	return 0;
}