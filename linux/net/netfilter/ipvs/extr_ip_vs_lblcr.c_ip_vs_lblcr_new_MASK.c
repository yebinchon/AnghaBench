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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
typedef  int /*<<< orphan*/  u16 ;
struct ip_vs_lblcr_table {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  size; } ;
struct ip_vs_lblcr_entry {TYPE_1__ set; int /*<<< orphan*/  lastuse; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; } ;
struct ip_vs_dest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,union nf_inet_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ip_vs_dest*,int) ; 
 struct ip_vs_lblcr_entry* FUNC4 (int /*<<< orphan*/ ,struct ip_vs_lblcr_table*,union nf_inet_addr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_lblcr_table*,struct ip_vs_lblcr_entry*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ip_vs_lblcr_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ip_vs_lblcr_entry *
FUNC7(struct ip_vs_lblcr_table *tbl, const union nf_inet_addr *daddr,
		u16 af, struct ip_vs_dest *dest)
{
	struct ip_vs_lblcr_entry *en;

	en = FUNC4(af, tbl, daddr);
	if (!en) {
		en = FUNC6(sizeof(*en), GFP_ATOMIC);
		if (!en)
			return NULL;

		en->af = af;
		FUNC2(af, &en->addr, daddr);
		en->lastuse = jiffies;

		/* initialize its dest set */
		FUNC1(&(en->set.size), 0);
		FUNC0(&en->set.list);

		FUNC3(&en->set, dest, false);

		FUNC5(tbl, en);
		return en;
	}

	FUNC3(&en->set, dest, true);

	return en;
}