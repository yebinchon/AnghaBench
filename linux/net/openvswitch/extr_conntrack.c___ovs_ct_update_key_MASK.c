#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_21__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_22__ {TYPE_8__ ct_orig; } ;
struct TYPE_18__ {scalar_t__ type; } ;
struct TYPE_16__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_17__ {TYPE_3__ ct_orig; } ;
struct TYPE_14__ {int /*<<< orphan*/  labels; int /*<<< orphan*/  mark; } ;
struct sw_flow_key {scalar_t__ ct_orig_proto; TYPE_9__ ipv6; TYPE_5__ eth; TYPE_4__ ipv4; TYPE_1__ ct; int /*<<< orphan*/  ct_zone; int /*<<< orphan*/  ct_state; } ;
struct nf_conntrack_zone {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
struct TYPE_13__ {TYPE_10__ u3; } ;
struct TYPE_19__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
struct TYPE_20__ {TYPE_6__ u3; } ;
struct nf_conntrack_tuple {TYPE_11__ dst; TYPE_7__ src; } ;
struct nf_conn {TYPE_2__* tuplehash; struct nf_conn* master; } ;
struct TYPE_15__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  NEXTHDR_ICMP ; 
 scalar_t__ NFPROTO_IPV4 ; 
 scalar_t__ NFPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct sw_flow_key*,struct nf_conntrack_tuple const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sw_flow_key*) ; 

__attribute__((used)) static void FUNC6(struct sw_flow_key *key, u8 state,
				const struct nf_conntrack_zone *zone,
				const struct nf_conn *ct)
{
	key->ct_state = state;
	key->ct_zone = zone->id;
	key->ct.mark = FUNC4(ct);
	FUNC3(ct, &key->ct.labels);

	if (ct) {
		const struct nf_conntrack_tuple *orig;

		/* Use the master if we have one. */
		if (ct->master)
			ct = ct->master;
		orig = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;

		/* IP version must match with the master connection. */
		if (key->eth.type == FUNC1(ETH_P_IP) &&
		    FUNC2(ct) == NFPROTO_IPV4) {
			key->ipv4.ct_orig.src = orig->src.u3.ip;
			key->ipv4.ct_orig.dst = orig->dst.u3.ip;
			FUNC0(key, orig, IPPROTO_ICMP);
			return;
		} else if (key->eth.type == FUNC1(ETH_P_IPV6) &&
			   !FUNC5(key) &&
			   FUNC2(ct) == NFPROTO_IPV6) {
			key->ipv6.ct_orig.src = orig->src.u3.in6;
			key->ipv6.ct_orig.dst = orig->dst.u3.in6;
			FUNC0(key, orig, NEXTHDR_ICMP);
			return;
		}
	}
	/* Clear 'ct_orig_proto' to mark the non-existence of conntrack
	 * original direction key fields.
	 */
	key->ct_orig_proto = 0;
}