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
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conncount_list {int /*<<< orphan*/  list_lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct nf_conncount_list*,struct nf_conntrack_tuple const*,struct nf_conntrack_zone const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct net *net,
		     struct nf_conncount_list *list,
		     const struct nf_conntrack_tuple *tuple,
		     const struct nf_conntrack_zone *zone)
{
	int ret;

	/* check the saved connections */
	FUNC1(&list->list_lock);
	ret = FUNC0(net, list, tuple, zone);
	FUNC2(&list->list_lock);

	return ret;
}