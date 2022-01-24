#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int proto; int /*<<< orphan*/  frag; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int label; TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv6; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  hop_limit; } ;
typedef  int __be32 ;

/* Variables and functions */
 int EPROTO ; 
 int IP6_FH_F_FRAG ; 
 int /*<<< orphan*/  IPV6_FLOWINFO_FLOWLABEL ; 
 int NEXTHDR_NONE ; 
 int /*<<< orphan*/  OVS_FRAG_TYPE_FIRST ; 
 int /*<<< orphan*/  OVS_FRAG_TYPE_LATER ; 
 int /*<<< orphan*/  OVS_FRAG_TYPE_NONE ; 
 int FUNC0 (struct sk_buff*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,unsigned int*,int,unsigned short*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct sw_flow_key *key)
{
	unsigned short frag_off;
	unsigned int payload_ofs = 0;
	unsigned int nh_ofs = FUNC5(skb);
	unsigned int nh_len;
	struct ipv6hdr *nh;
	int err, nexthdr, flags = 0;

	err = FUNC0(skb, nh_ofs + sizeof(*nh));
	if (FUNC7(err))
		return err;

	nh = FUNC4(skb);

	key->ip.proto = NEXTHDR_NONE;
	key->ip.tos = FUNC3(nh);
	key->ip.ttl = nh->hop_limit;
	key->ipv6.label = *(__be32 *)nh & FUNC1(IPV6_FLOWINFO_FLOWLABEL);
	key->ipv6.addr.src = nh->saddr;
	key->ipv6.addr.dst = nh->daddr;

	nexthdr = FUNC2(skb, &payload_ofs, -1, &frag_off, &flags);
	if (flags & IP6_FH_F_FRAG) {
		if (frag_off) {
			key->ip.frag = OVS_FRAG_TYPE_LATER;
			key->ip.proto = nexthdr;
			return 0;
		}
		key->ip.frag = OVS_FRAG_TYPE_FIRST;
	} else {
		key->ip.frag = OVS_FRAG_TYPE_NONE;
	}

	/* Delayed handling of error in ipv6_find_hdr() as it
	 * always sets flags and frag_off to a valid value which may be
	 * used to set key->ip.frag above.
	 */
	if (FUNC7(nexthdr < 0))
		return -EPROTO;

	nh_len = payload_ofs - nh_ofs;
	FUNC6(skb, nh_ofs + nh_len);
	key->ip.proto = nexthdr;
	return nh_len;
}