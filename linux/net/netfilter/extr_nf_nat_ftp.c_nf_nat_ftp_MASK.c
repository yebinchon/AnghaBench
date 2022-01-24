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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
typedef  scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  port; } ;
struct TYPE_16__ {TYPE_6__ tcp; } ;
struct TYPE_17__ {TYPE_7__ u; } ;
struct TYPE_18__ {TYPE_8__ dst; } ;
struct TYPE_13__ {int /*<<< orphan*/  port; } ;
struct TYPE_14__ {TYPE_4__ tcp; } ;
struct nf_conntrack_expect {int dir; TYPE_9__ tuple; TYPE_5__ saved_proto; int /*<<< orphan*/  expectfn; struct nf_conn* master; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
typedef  enum nf_ct_ftp_type { ____Placeholder_nf_ct_ftp_type } nf_ct_ftp_type ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_10__ {union nf_inet_addr u3; } ;
struct TYPE_11__ {TYPE_1__ dst; } ;
struct TYPE_12__ {TYPE_2__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct nf_conntrack_expect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nf_conn*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  nf_nat_follow_master ; 
 unsigned int FUNC5 (struct nf_conn*,int,char*,int,union nf_inet_addr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,unsigned int,char*,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static unsigned int FUNC9(struct sk_buff *skb,
			       enum ip_conntrack_info ctinfo,
			       enum nf_ct_ftp_type type,
			       unsigned int protoff,
			       unsigned int matchoff,
			       unsigned int matchlen,
			       struct nf_conntrack_expect *exp)
{
	union nf_inet_addr newaddr;
	u_int16_t port;
	int dir = FUNC0(ctinfo);
	struct nf_conn *ct = exp->master;
	char buffer[sizeof("|1||65535|") + INET6_ADDRSTRLEN];
	unsigned int buflen;

	FUNC8("type %i, off %u len %u\n", type, matchoff, matchlen);

	/* Connection will come from wherever this packet goes, hence !dir */
	newaddr = ct->tuplehash[!dir].tuple.dst.u3;
	exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
	exp->dir = !dir;

	/* When you see the packet, we need to NAT it the same as the
	 * this one. */
	exp->expectfn = nf_nat_follow_master;

	/* Try to get same port: if not, try to change it. */
	for (port = FUNC7(exp->saved_proto.tcp.port); port != 0; port++) {
		int ret;

		exp->tuple.dst.u.tcp.port = FUNC1(port);
		ret = FUNC2(exp, 0);
		if (ret == 0)
			break;
		else if (ret != -EBUSY) {
			port = 0;
			break;
		}
	}

	if (port == 0) {
		FUNC3(skb, ct, "all ports in use");
		return NF_DROP;
	}

	buflen = FUNC5(ct, type, buffer, sizeof(buffer),
				    &newaddr, port);
	if (!buflen)
		goto out;

	FUNC8("calling nf_nat_mangle_tcp_packet\n");

	if (!FUNC6(skb, ct, ctinfo, protoff, matchoff,
				      matchlen, buffer, buflen))
		goto out;

	return NF_ACCEPT;

out:
	FUNC3(skb, ct, "cannot mangle packet");
	FUNC4(exp);
	return NF_DROP;
}