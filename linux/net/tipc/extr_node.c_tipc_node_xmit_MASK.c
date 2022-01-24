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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_node {int* active_links; struct tipc_link_entry* links; } ;
struct tipc_link_entry {int /*<<< orphan*/  maddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  link; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int ENOBUFS ; 
 int INVALID_BEARER_ID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 scalar_t__ FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int,struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct sk_buff_head*) ; 
 struct tipc_node* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_node*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,struct sk_buff_head*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct net *net, struct sk_buff_head *list,
		   u32 dnode, int selector)
{
	struct tipc_link_entry *le = NULL;
	struct tipc_node *n;
	struct sk_buff_head xmitq;
	int bearer_id;
	int rc;

	if (FUNC2(net, dnode)) {
		FUNC8(net, list);
		FUNC4(&list->lock);
		FUNC14(net, list);
		return 0;
	}

	n = FUNC9(net, dnode);
	if (FUNC15(!n)) {
		FUNC1(list);
		return -EHOSTUNREACH;
	}

	FUNC12(n);
	bearer_id = n->active_links[selector & 1];
	if (FUNC15(bearer_id == INVALID_BEARER_ID)) {
		FUNC13(n);
		FUNC11(n);
		FUNC1(list);
		return -EHOSTUNREACH;
	}

	FUNC0(&xmitq);
	le = &n->links[bearer_id];
	FUNC3(&le->lock);
	rc = FUNC7(le->link, list, &xmitq);
	FUNC5(&le->lock);
	FUNC13(n);

	if (FUNC15(rc == -ENOBUFS))
		FUNC10(n, bearer_id, false);
	else
		FUNC6(net, bearer_id, &xmitq, &le->maddr);

	FUNC11(n);

	return rc;
}