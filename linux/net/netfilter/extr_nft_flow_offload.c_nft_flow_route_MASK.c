#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct nf_flow_route {TYPE_8__* tuple; } ;
struct nf_conn {TYPE_5__* tuplehash; } ;
struct TYPE_15__ {int /*<<< orphan*/  flowi6_oif; int /*<<< orphan*/  daddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  daddr; } ;
struct TYPE_16__ {TYPE_6__ ip6; TYPE_1__ ip4; } ;
struct flowi {TYPE_7__ u; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_18__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_17__ {struct dst_entry* dst; } ;
struct TYPE_11__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
struct TYPE_12__ {TYPE_2__ u3; } ;
struct TYPE_13__ {TYPE_3__ src; } ;
struct TYPE_14__ {TYPE_4__ tuple; } ;

/* Variables and functions */
 int ENOENT ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int /*<<< orphan*/  FUNC0 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,int,int) ; 
 TYPE_9__* FUNC2 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_pktinfo const*) ; 
 int FUNC4 (struct nft_pktinfo const*) ; 
 struct dst_entry* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct nft_pktinfo *pkt,
			  const struct nf_conn *ct,
			  struct nf_flow_route *route,
			  enum ip_conntrack_dir dir)
{
	struct dst_entry *this_dst = FUNC5(pkt->skb);
	struct dst_entry *other_dst = NULL;
	struct flowi fl;

	FUNC0(&fl, 0, sizeof(fl));
	switch (FUNC4(pkt)) {
	case NFPROTO_IPV4:
		fl.u.ip4.daddr = ct->tuplehash[dir].tuple.src.u3.ip;
		fl.u.ip4.flowi4_oif = FUNC2(pkt)->ifindex;
		break;
	case NFPROTO_IPV6:
		fl.u.ip6.daddr = ct->tuplehash[dir].tuple.src.u3.in6;
		fl.u.ip6.flowi6_oif = FUNC2(pkt)->ifindex;
		break;
	}

	FUNC1(FUNC3(pkt), &other_dst, &fl, false, FUNC4(pkt));
	if (!other_dst)
		return -ENOENT;

	route->tuple[dir].dst		= this_dst;
	route->tuple[!dir].dst		= other_dst;

	return 0;
}