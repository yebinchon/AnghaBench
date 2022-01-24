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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;
struct iphdr {int ihl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  check; int /*<<< orphan*/  saddr; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;

/* Variables and functions */
 int NF_NAT_MANIP_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static bool FUNC3(struct sk_buff *skb,
				  unsigned int iphdroff,
				  const struct nf_conntrack_tuple *target,
				  enum nf_nat_manip_type maniptype)
{
	struct iphdr *iph;
	unsigned int hdroff;

	if (FUNC2(skb, iphdroff + sizeof(*iph)))
		return false;

	iph = (void *)skb->data + iphdroff;
	hdroff = iphdroff + iph->ihl * 4;

	if (!FUNC1(skb, iphdroff, hdroff, target, maniptype))
		return false;
	iph = (void *)skb->data + iphdroff;

	if (maniptype == NF_NAT_MANIP_SRC) {
		FUNC0(&iph->check, iph->saddr, target->src.u3.ip);
		iph->saddr = target->src.u3.ip;
	} else {
		FUNC0(&iph->check, iph->daddr, target->dst.u3.ip);
		iph->daddr = target->dst.u3.ip;
	}
	return true;
}