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
struct TYPE_3__ {unsigned int len; } ;
struct net_generic {void** ptr; TYPE_1__ s; } ;
struct net {int /*<<< orphan*/  gen; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 unsigned int MIN_PERNET_OPS_ID ; 
 int /*<<< orphan*/  FUNC1 (struct net_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**,unsigned int) ; 
 struct net_generic* FUNC4 () ; 
 int /*<<< orphan*/  pernet_ops_rwsem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_generic*) ; 
 struct net_generic* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ s ; 

__attribute__((used)) static int FUNC7(struct net *net, unsigned int id, void *data)
{
	struct net_generic *ng, *old_ng;

	FUNC0(id < MIN_PERNET_OPS_ID);

	old_ng = FUNC6(net->gen,
					   FUNC2(&pernet_ops_rwsem));
	if (old_ng->s.len > id) {
		old_ng->ptr[id] = data;
		return 0;
	}

	ng = FUNC4();
	if (ng == NULL)
		return -ENOMEM;

	/*
	 * Some synchronisation notes:
	 *
	 * The net_generic explores the net->gen array inside rcu
	 * read section. Besides once set the net->gen->ptr[x]
	 * pointer never changes (see rules in netns/generic.h).
	 *
	 * That said, we simply duplicate this array and schedule
	 * the old copy for kfree after a grace period.
	 */

	FUNC3(&ng->ptr[MIN_PERNET_OPS_ID], &old_ng->ptr[MIN_PERNET_OPS_ID],
	       (old_ng->s.len - MIN_PERNET_OPS_ID) * sizeof(void *));
	ng->ptr[id] = data;

	FUNC5(net->gen, ng);
	FUNC1(old_ng, s.rcu);
	return 0;
}