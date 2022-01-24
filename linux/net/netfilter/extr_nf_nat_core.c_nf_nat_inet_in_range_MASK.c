#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
struct TYPE_5__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
struct nf_nat_range2 {TYPE_3__ max_addr; TYPE_1__ min_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {scalar_t__ l3num; TYPE_2__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ src; } ;

/* Variables and functions */
 scalar_t__ NFPROTO_IPV4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(const struct nf_conntrack_tuple *t,
				 const struct nf_nat_range2 *range)
{
	if (t->src.l3num == NFPROTO_IPV4)
		return FUNC1(t->src.u3.ip) >= FUNC1(range->min_addr.ip) &&
		       FUNC1(t->src.u3.ip) <= FUNC1(range->max_addr.ip);

	return FUNC0(&t->src.u3.in6, &range->min_addr.in6) >= 0 &&
	       FUNC0(&t->src.u3.in6, &range->max_addr.in6) <= 0;
}