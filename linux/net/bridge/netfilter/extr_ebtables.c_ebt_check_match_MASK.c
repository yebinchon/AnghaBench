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
struct xt_mtchk_param {int /*<<< orphan*/  matchinfo; struct xt_match* match; struct ebt_entry* entryinfo; } ;
struct xt_match {scalar_t__ family; int /*<<< orphan*/  me; } ;
struct TYPE_2__ {struct xt_match* match; int /*<<< orphan*/  revision; int /*<<< orphan*/  name; } ;
struct ebt_entry_match {size_t match_size; int /*<<< orphan*/  data; TYPE_1__ u; } ;
struct ebt_entry {int watchers_offset; int invflags; int /*<<< orphan*/  ethproto; } ;

/* Variables and functions */
 int EBT_IPROTO ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct xt_match*) ; 
 scalar_t__ NFPROTO_BRIDGE ; 
 int FUNC1 (struct xt_match*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xt_mtchk_param*,size_t,int /*<<< orphan*/ ,int) ; 
 struct xt_match* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC7(struct ebt_entry_match *m, struct xt_mtchk_param *par,
		unsigned int *cnt)
{
	const struct ebt_entry *e = par->entryinfo;
	struct xt_match *match;
	size_t left = ((char *)e + e->watchers_offset) - (char *)m;
	int ret;

	if (left < sizeof(struct ebt_entry_match) ||
	    left - sizeof(struct ebt_entry_match) < m->match_size)
		return -EINVAL;

	match = FUNC6(NFPROTO_BRIDGE, m->u.name, m->u.revision);
	if (FUNC0(match) || match->family != NFPROTO_BRIDGE) {
		if (!FUNC0(match))
			FUNC2(match->me);
		FUNC4("ebt_%s", m->u.name);
		match = FUNC6(NFPROTO_BRIDGE, m->u.name, m->u.revision);
	}
	if (FUNC0(match))
		return FUNC1(match);
	m->u.match = match;

	par->match     = match;
	par->matchinfo = m->data;
	ret = FUNC5(par, m->match_size,
	      FUNC3(e->ethproto), e->invflags & EBT_IPROTO);
	if (ret < 0) {
		FUNC2(match->me);
		return ret;
	}

	(*cnt)++;
	return 0;
}