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
typedef  void* u32 ;
struct tipc_member {int state; void* node; scalar_t__ bc_acked; void* instance; void* port; struct tipc_group* group; int /*<<< orphan*/  deferredq; int /*<<< orphan*/  small_win; int /*<<< orphan*/  list; } ;
struct tipc_group {int /*<<< orphan*/  dests; int /*<<< orphan*/  member_cnt; scalar_t__ bc_snd_nxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tipc_member* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_group*,struct tipc_member*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static struct tipc_member *FUNC5(struct tipc_group *grp,
						    u32 node, u32 port,
						    u32 instance, int state)
{
	struct tipc_member *m;

	m = FUNC2(sizeof(*m), GFP_ATOMIC);
	if (!m)
		return NULL;
	FUNC0(&m->list);
	FUNC0(&m->small_win);
	FUNC1(&m->deferredq);
	m->group = grp;
	m->node = node;
	m->port = port;
	m->instance = instance;
	m->bc_acked = grp->bc_snd_nxt - 1;
	grp->member_cnt++;
	FUNC3(grp, m);
	FUNC4(&grp->dests, m->node);
	m->state = state;
	return m;
}