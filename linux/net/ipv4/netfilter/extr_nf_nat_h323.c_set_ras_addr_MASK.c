#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
union nf_inet_addr {scalar_t__ ip; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {TYPE_9__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  scalar_t__ __be16 ;
typedef  int /*<<< orphan*/  TransportAddress ;
struct TYPE_16__ {scalar_t__ port; } ;
struct TYPE_17__ {TYPE_5__ udp; } ;
struct TYPE_11__ {int /*<<< orphan*/  ip; } ;
struct TYPE_18__ {TYPE_6__ u; TYPE_10__ u3; } ;
struct TYPE_13__ {scalar_t__ port; } ;
struct TYPE_14__ {TYPE_2__ udp; } ;
struct TYPE_12__ {scalar_t__ ip; } ;
struct TYPE_15__ {TYPE_3__ u; TYPE_1__ u3; } ;
struct TYPE_19__ {TYPE_7__ dst; TYPE_4__ src; } ;
struct TYPE_20__ {TYPE_8__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nf_conn*,unsigned char*,int /*<<< orphan*/ *,union nf_inet_addr*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,unsigned int,unsigned char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_10__*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nf_conn *ct,
			enum ip_conntrack_info ctinfo,
			unsigned int protoff, unsigned char **data,
			TransportAddress *taddr, int count)
{
	int dir = FUNC0(ctinfo);
	int i;
	__be16 port;
	union nf_inet_addr addr;

	for (i = 0; i < count; i++) {
		if (FUNC1(ct, *data, &taddr[i], &addr, &port) &&
		    addr.ip == ct->tuplehash[dir].tuple.src.u3.ip &&
		    port == ct->tuplehash[dir].tuple.src.u.udp.port) {
			FUNC3("nf_nat_ras: set rasAddress %pI4:%hu->%pI4:%hu\n",
				 &addr.ip, FUNC2(port),
				 &ct->tuplehash[!dir].tuple.dst.u3.ip,
				 FUNC2(ct->tuplehash[!dir].tuple.dst.u.udp.port));
			return FUNC4(skb, protoff, data, 0, &taddr[i],
					     &ct->tuplehash[!dir].tuple.dst.u3,
					     ct->tuplehash[!dir].tuple.
								dst.u.udp.port);
		}
	}

	return 0;
}