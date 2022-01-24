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
typedef  int /*<<< orphan*/  tgpar ;
struct xt_tgchk_param {char const* table; unsigned int hook_mask; int /*<<< orphan*/  targinfo; struct xt_target* target; scalar_t__ family; struct ebt_entry* entryinfo; struct xt_tgchk_param* net; } ;
struct xt_target {scalar_t__ family; int /*<<< orphan*/  me; } ;
struct xt_mtchk_param {char const* table; unsigned int hook_mask; int /*<<< orphan*/  targinfo; struct xt_target* target; scalar_t__ family; struct ebt_entry* entryinfo; struct xt_mtchk_param* net; } ;
struct net {char const* table; unsigned int hook_mask; int /*<<< orphan*/  targinfo; struct xt_target* target; scalar_t__ family; struct ebt_entry* entryinfo; struct net* net; } ;
struct ebt_table_info {scalar_t__* hook_entry; } ;
struct ebt_standard_target {int /*<<< orphan*/  verdict; } ;
struct TYPE_4__ {struct xt_target* target; int /*<<< orphan*/  name; } ;
struct ebt_entry_target {size_t target_size; int /*<<< orphan*/  data; TYPE_2__ u; } ;
struct ebt_entry {int bitmask; int invflags; size_t next_offset; size_t target_offset; int /*<<< orphan*/  ethproto; } ;
struct TYPE_3__ {scalar_t__ chaininfo; } ;
struct ebt_cl_stack {unsigned int hookmask; TYPE_1__ cs; } ;
typedef  int /*<<< orphan*/  mtpar ;

/* Variables and functions */
 int EBT_802_3 ; 
 int EBT_F_MASK ; 
 int EBT_INV_MASK ; 
 int EBT_IPROTO ; 
 int FUNC0 (struct ebt_entry*,int /*<<< orphan*/ ,struct xt_tgchk_param*,unsigned int*) ; 
 int EBT_NOPROTO ; 
 int FUNC1 (struct ebt_entry*,int /*<<< orphan*/ ,struct xt_tgchk_param*,unsigned int*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC2 (struct xt_target*) ; 
 scalar_t__ NFPROTO_BRIDGE ; 
 unsigned int NF_BR_NUMHOOKS ; 
 int /*<<< orphan*/  NUM_STANDARD_TARGETS ; 
 int FUNC3 (struct xt_target*) ; 
 int /*<<< orphan*/  ebt_check_match ; 
 int /*<<< orphan*/  ebt_check_watcher ; 
 int /*<<< orphan*/  ebt_cleanup_match ; 
 int /*<<< orphan*/  ebt_cleanup_watcher ; 
 struct ebt_entry_target* FUNC4 (struct ebt_entry*) ; 
 struct xt_target ebt_standard_target ; 
 int /*<<< orphan*/  FUNC5 (struct xt_tgchk_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xt_tgchk_param*,size_t,int /*<<< orphan*/ ,int) ; 
 struct xt_target* FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC10(struct ebt_entry *e, struct net *net,
		const struct ebt_table_info *newinfo,
		const char *name, unsigned int *cnt,
		struct ebt_cl_stack *cl_s, unsigned int udc_cnt)
{
	struct ebt_entry_target *t;
	struct xt_target *target;
	unsigned int i, j, hook = 0, hookmask = 0;
	size_t gap;
	int ret;
	struct xt_mtchk_param mtpar;
	struct xt_tgchk_param tgpar;

	/* don't mess with the struct ebt_entries */
	if (e->bitmask == 0)
		return 0;

	if (e->bitmask & ~EBT_F_MASK)
		return -EINVAL;

	if (e->invflags & ~EBT_INV_MASK)
		return -EINVAL;

	if ((e->bitmask & EBT_NOPROTO) && (e->bitmask & EBT_802_3))
		return -EINVAL;

	/* what hook do we belong to? */
	for (i = 0; i < NF_BR_NUMHOOKS; i++) {
		if (!newinfo->hook_entry[i])
			continue;
		if ((char *)newinfo->hook_entry[i] < (char *)e)
			hook = i;
		else
			break;
	}
	/* (1 << NF_BR_NUMHOOKS) tells the check functions the rule is on
	 * a base chain
	 */
	if (i < NF_BR_NUMHOOKS)
		hookmask = (1 << hook) | (1 << NF_BR_NUMHOOKS);
	else {
		for (i = 0; i < udc_cnt; i++)
			if ((char *)(cl_s[i].cs.chaininfo) > (char *)e)
				break;
		if (i == 0)
			hookmask = (1 << hook) | (1 << NF_BR_NUMHOOKS);
		else
			hookmask = cl_s[i - 1].hookmask;
	}
	i = 0;

	FUNC5(&mtpar, 0, sizeof(mtpar));
	FUNC5(&tgpar, 0, sizeof(tgpar));
	mtpar.net	= tgpar.net       = net;
	mtpar.table     = tgpar.table     = name;
	mtpar.entryinfo = tgpar.entryinfo = e;
	mtpar.hook_mask = tgpar.hook_mask = hookmask;
	mtpar.family    = tgpar.family    = NFPROTO_BRIDGE;
	ret = FUNC0(e, ebt_check_match, &mtpar, &i);
	if (ret != 0)
		goto cleanup_matches;
	j = 0;
	ret = FUNC1(e, ebt_check_watcher, &tgpar, &j);
	if (ret != 0)
		goto cleanup_watchers;
	t = FUNC4(e);
	gap = e->next_offset - e->target_offset;

	target = FUNC9(NFPROTO_BRIDGE, t->u.name, 0);
	if (FUNC2(target)) {
		ret = FUNC3(target);
		goto cleanup_watchers;
	}

	/* Reject UNSPEC, xtables verdicts/return values are incompatible */
	if (target->family != NFPROTO_BRIDGE) {
		FUNC6(target->me);
		ret = -ENOENT;
		goto cleanup_watchers;
	}

	t->u.target = target;
	if (t->u.target == &ebt_standard_target) {
		if (gap < sizeof(struct ebt_standard_target)) {
			ret = -EFAULT;
			goto cleanup_watchers;
		}
		if (((struct ebt_standard_target *)t)->verdict <
		   -NUM_STANDARD_TARGETS) {
			ret = -EFAULT;
			goto cleanup_watchers;
		}
	} else if (t->target_size > gap - sizeof(struct ebt_entry_target)) {
		FUNC6(t->u.target->me);
		ret = -EFAULT;
		goto cleanup_watchers;
	}

	tgpar.target   = target;
	tgpar.targinfo = t->data;
	ret = FUNC8(&tgpar, t->target_size,
	      FUNC7(e->ethproto), e->invflags & EBT_IPROTO);
	if (ret < 0) {
		FUNC6(target->me);
		goto cleanup_watchers;
	}
	(*cnt)++;
	return 0;
cleanup_watchers:
	FUNC1(e, ebt_cleanup_watcher, net, &j);
cleanup_matches:
	FUNC0(e, ebt_cleanup_match, net, &i);
	return ret;
}