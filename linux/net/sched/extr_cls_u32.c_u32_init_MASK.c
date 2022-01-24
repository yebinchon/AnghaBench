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
struct tcf_proto {struct tc_u_common* data; int /*<<< orphan*/  root; int /*<<< orphan*/  prio; } ;
struct tc_u_hnode {int handle; int is_root; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  next; int /*<<< orphan*/  handle_idr; int /*<<< orphan*/  prio; } ;
struct tc_u_common {int /*<<< orphan*/  hlist; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  hnode; int /*<<< orphan*/  handle_idr; void* ptr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tc_u_common*,struct tc_u_hnode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tc_u_hnode*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tc_u_hnode*) ; 
 struct tc_u_common* FUNC8 (void*) ; 
 void* FUNC9 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(struct tcf_proto *tp)
{
	struct tc_u_hnode *root_ht;
	void *key = FUNC9(tp);
	struct tc_u_common *tp_c = FUNC8(key);

	root_ht = FUNC6(sizeof(*root_ht), GFP_KERNEL);
	if (root_ht == NULL)
		return -ENOBUFS;

	root_ht->refcnt++;
	root_ht->handle = tp_c ? FUNC2(tp_c, root_ht) : 0x80000000;
	root_ht->prio = tp->prio;
	root_ht->is_root = true;
	FUNC4(&root_ht->handle_idr);

	if (tp_c == NULL) {
		tp_c = FUNC6(sizeof(*tp_c), GFP_KERNEL);
		if (tp_c == NULL) {
			FUNC5(root_ht);
			return -ENOBUFS;
		}
		tp_c->ptr = key;
		FUNC0(&tp_c->hnode);
		FUNC4(&tp_c->handle_idr);

		FUNC3(&tp_c->hnode, FUNC10(key));
	}

	tp_c->refcnt++;
	FUNC1(root_ht->next, tp_c->hlist);
	FUNC7(tp_c->hlist, root_ht);

	root_ht->refcnt++;
	FUNC7(tp->root, root_ht);
	tp->data = tp_c;
	return 0;
}