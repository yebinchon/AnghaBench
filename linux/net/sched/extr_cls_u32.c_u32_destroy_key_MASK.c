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
struct tc_u_knode {scalar_t__ refcnt; int /*<<< orphan*/  pcpu_success; int /*<<< orphan*/  pf; int /*<<< orphan*/  exts; int /*<<< orphan*/  ht_down; } ;
struct tc_u_hnode {scalar_t__ refcnt; int /*<<< orphan*/  pcpu_success; int /*<<< orphan*/  pf; int /*<<< orphan*/  exts; int /*<<< orphan*/  ht_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_u_knode*) ; 
 struct tc_u_knode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tc_u_knode *n, bool free_pf)
{
	struct tc_u_hnode *ht = FUNC2(n->ht_down);

	FUNC3(&n->exts);
	FUNC4(&n->exts);
	if (ht && --ht->refcnt == 0)
		FUNC1(ht);
#ifdef CONFIG_CLS_U32_PERF
	if (free_pf)
		free_percpu(n->pf);
#endif
#ifdef CONFIG_CLS_U32_MARK
	if (free_pf)
		free_percpu(n->pcpu_success);
#endif
	FUNC1(n);
	return 0;
}