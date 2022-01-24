#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valid_new ;
typedef  int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ pf; } ;
struct nf_conn {TYPE_4__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {TYPE_1__ icmp; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__ dst; } ;
struct TYPE_11__ {unsigned int timeout; } ;
struct TYPE_10__ {TYPE_6__ tuple; } ;

/* Variables and functions */
#define  ICMP_ADDRESS 131 
#define  ICMP_ECHO 130 
#define  ICMP_INFO_REQUEST 129 
#define  ICMP_TIMESTAMP 128 
 scalar_t__ NFPROTO_IPV4 ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*,int,struct sk_buff*,unsigned int) ; 
 unsigned int* FUNC3 (struct nf_conn*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 

int FUNC6(struct nf_conn *ct,
			     struct sk_buff *skb,
			     enum ip_conntrack_info ctinfo,
			     const struct nf_hook_state *state)
{
	/* Do not immediately delete the connection after the first
	   successful reply to avoid excessive conntrackd traffic
	   and also to handle correctly ICMP echo reply duplicates. */
	unsigned int *timeout = FUNC3(ct);
	static const u_int8_t valid_new[] = {
		[ICMP_ECHO] = 1,
		[ICMP_TIMESTAMP] = 1,
		[ICMP_INFO_REQUEST] = 1,
		[ICMP_ADDRESS] = 1
	};

	if (state->pf != NFPROTO_IPV4)
		return -NF_ACCEPT;

	if (ct->tuplehash[0].tuple.dst.u.icmp.type >= sizeof(valid_new) ||
	    !valid_new[ct->tuplehash[0].tuple.dst.u.icmp.type]) {
		/* Can't create a new ICMP `conn' with this. */
		FUNC5("icmp: can't create new conn with type %u\n",
			 ct->tuplehash[0].tuple.dst.u.icmp.type);
		FUNC0(&ct->tuplehash[0].tuple);
		return -NF_ACCEPT;
	}

	if (!timeout)
		timeout = &FUNC4(FUNC1(ct))->timeout;

	FUNC2(ct, ctinfo, skb, *timeout);
	return NF_ACCEPT;
}