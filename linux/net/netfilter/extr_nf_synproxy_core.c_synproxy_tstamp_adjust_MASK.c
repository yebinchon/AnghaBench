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
struct tcphdr {int doff; int /*<<< orphan*/  check; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn_synproxy {scalar_t__ tsoff; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IP_CT_DIR_REPLY ; 
 unsigned char TCPOLEN_TIMESTAMP ; 
#define  TCPOPT_EOL 129 
#define  TCPOPT_NOP 128 
 unsigned char TCPOPT_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC5(struct sk_buff *skb, unsigned int protoff,
		       struct tcphdr *th, struct nf_conn *ct,
		       enum ip_conntrack_info ctinfo,
		       const struct nf_conn_synproxy *synproxy)
{
	unsigned int optoff, optend;
	__be32 *ptr, old;

	if (synproxy->tsoff == 0)
		return 1;

	optoff = protoff + sizeof(struct tcphdr);
	optend = protoff + th->doff * 4;

	if (FUNC4(skb, optend))
		return 0;

	while (optoff < optend) {
		unsigned char *op = skb->data + optoff;

		switch (op[0]) {
		case TCPOPT_EOL:
			return 1;
		case TCPOPT_NOP:
			optoff++;
			continue;
		default:
			if (optoff + 1 == optend ||
			    optoff + op[1] > optend ||
			    op[1] < 2)
				return 0;
			if (op[0] == TCPOPT_TIMESTAMP &&
			    op[1] == TCPOLEN_TIMESTAMP) {
				if (FUNC0(ctinfo) == IP_CT_DIR_REPLY) {
					ptr = (__be32 *)&op[2];
					old = *ptr;
					*ptr = FUNC1(FUNC3(*ptr) -
						     synproxy->tsoff);
				} else {
					ptr = (__be32 *)&op[6];
					old = *ptr;
					*ptr = FUNC1(FUNC3(*ptr) +
						     synproxy->tsoff);
				}
				FUNC2(&th->check, skb,
							 old, *ptr, false);
				return 1;
			}
			optoff += op[1];
		}
	}
	return 1;
}