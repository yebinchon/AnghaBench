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
struct nf_nat_range2 {int flags; int /*<<< orphan*/  max_proto; int /*<<< orphan*/  min_proto; } ;
struct nf_conntrack_tuple {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NF_NAT_MANIP_SRC ; 
 int NF_NAT_RANGE_MAP_IPS ; 
 int NF_NAT_RANGE_PROTO_SPECIFIED ; 
 int FUNC0 (struct nf_conntrack_tuple const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple const*,struct nf_nat_range2 const*) ; 

__attribute__((used)) static int FUNC2(const struct nf_conntrack_tuple *tuple,
		    const struct nf_nat_range2 *range)
{
	/* If we are supposed to map IPs, then we must be in the
	 * range specified, otherwise let this drag us onto a new src IP.
	 */
	if (range->flags & NF_NAT_RANGE_MAP_IPS &&
	    !FUNC1(tuple, range))
		return 0;

	if (!(range->flags & NF_NAT_RANGE_PROTO_SPECIFIED))
		return 1;

	return FUNC0(tuple, NF_NAT_MANIP_SRC,
				&range->min_proto, &range->max_proto);
}