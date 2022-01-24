#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
union nf_inet_addr {int /*<<< orphan*/  ip; } ;
typedef  scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct nf_ct_h323_master {void** sig_port; } ;
struct TYPE_16__ {void* port; } ;
struct TYPE_17__ {TYPE_11__ tcp; } ;
struct TYPE_15__ {int /*<<< orphan*/  ip; } ;
struct TYPE_18__ {TYPE_12__ u; TYPE_10__ u3; } ;
struct TYPE_26__ {void* port; } ;
struct TYPE_27__ {TYPE_7__ tcp; } ;
struct TYPE_25__ {int /*<<< orphan*/  ip; } ;
struct TYPE_28__ {TYPE_8__ u; TYPE_6__ u3; } ;
struct TYPE_19__ {TYPE_13__ dst; TYPE_9__ src; } ;
struct TYPE_20__ {void* port; } ;
struct TYPE_21__ {TYPE_1__ tcp; } ;
struct nf_conntrack_expect {int dir; TYPE_14__ tuple; int /*<<< orphan*/  expectfn; TYPE_2__ saved_proto; } ;
struct nf_conn {TYPE_5__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  void* __be16 ;
typedef  int /*<<< orphan*/  TransportAddress ;
struct TYPE_22__ {int /*<<< orphan*/  u3; } ;
struct TYPE_23__ {TYPE_3__ dst; } ;
struct TYPE_24__ {TYPE_4__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (struct nf_conn*,unsigned char*,int /*<<< orphan*/ *,union nf_inet_addr*,void**) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ip_nat_q931_expect ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct nf_conntrack_expect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_expect*) ; 
 struct nf_ct_h323_master* FUNC6 (struct nf_conn*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (struct sk_buff*,unsigned int,unsigned char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct nf_conn *ct,
		    enum ip_conntrack_info ctinfo,
		    unsigned int protoff, unsigned char **data,
		    TransportAddress *taddr, int idx,
		    __be16 port, struct nf_conntrack_expect *exp)
{
	struct nf_ct_h323_master *info = FUNC6(ct);
	int dir = FUNC0(ctinfo);
	u_int16_t nated_port = FUNC8(port);
	union nf_inet_addr addr;

	/* Set expectations for NAT */
	exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
	exp->expectfn = ip_nat_q931_expect;
	exp->dir = !dir;

	/* Check existing expects */
	if (info->sig_port[dir] == port)
		nated_port = FUNC8(info->sig_port[!dir]);

	/* Try to get same port: if not, try to change it. */
	for (; nated_port != 0; nated_port++) {
		int ret;

		exp->tuple.dst.u.tcp.port = FUNC2(nated_port);
		ret = FUNC4(exp, 0);
		if (ret == 0)
			break;
		else if (ret != -EBUSY) {
			nated_port = 0;
			break;
		}
	}

	if (nated_port == 0) {	/* No port available */
		FUNC3("nf_nat_ras: out of TCP ports\n");
		return 0;
	}

	/* Modify signal */
	if (FUNC10(skb, protoff, data, 0, &taddr[idx],
			  &ct->tuplehash[!dir].tuple.dst.u3,
			  FUNC2(nated_port))) {
		FUNC5(exp);
		return -1;
	}

	/* Save ports */
	info->sig_port[dir] = port;
	info->sig_port[!dir] = FUNC2(nated_port);

	/* Fix for Gnomemeeting */
	if (idx > 0 &&
	    FUNC1(ct, *data, &taddr[0], &addr, &port) &&
	    (FUNC7(addr.ip) & 0xff000000) == 0x7f000000) {
		if (FUNC10(skb, protoff, data, 0, &taddr[0],
				  &ct->tuplehash[!dir].tuple.dst.u3,
				  info->sig_port[!dir])) {
			FUNC5(exp);
			return -1;
		}
	}

	/* Success */
	FUNC9("nf_nat_ras: expect Q.931 %pI4:%hu->%pI4:%hu\n",
		 &exp->tuple.src.u3.ip,
		 FUNC8(exp->tuple.src.u.tcp.port),
		 &exp->tuple.dst.u3.ip,
		 FUNC8(exp->tuple.dst.u.tcp.port));

	return 0;
}