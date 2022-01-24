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
struct tcphdr {int doff; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn_seqadj {int /*<<< orphan*/ * seq; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned char TCPOLEN_SACK_PERBLOCK ; 
#define  TCPOPT_EOL 129 
#define  TCPOPT_NOP 128 
 unsigned char TCPOPT_SACK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct tcphdr*,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 struct nf_conn_seqadj* FUNC2 (struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC4(struct sk_buff *skb,
				      unsigned int protoff,
				      struct nf_conn *ct,
				      enum ip_conntrack_info ctinfo)
{
	struct tcphdr *tcph = (void *)skb->data + protoff;
	struct nf_conn_seqadj *seqadj = FUNC2(ct);
	unsigned int dir, optoff, optend;

	optoff = protoff + sizeof(struct tcphdr);
	optend = protoff + tcph->doff * 4;

	if (FUNC3(skb, optend))
		return 0;

	tcph = (void *)skb->data + protoff;
	dir = FUNC0(ctinfo);

	while (optoff < optend) {
		/* Usually: option, length. */
		unsigned char *op = skb->data + optoff;

		switch (op[0]) {
		case TCPOPT_EOL:
			return 1;
		case TCPOPT_NOP:
			optoff++;
			continue;
		default:
			/* no partial options */
			if (optoff + 1 == optend ||
			    optoff + op[1] > optend ||
			    op[1] < 2)
				return 0;
			if (op[0] == TCPOPT_SACK &&
			    op[1] >= 2+TCPOLEN_SACK_PERBLOCK &&
			    ((op[1] - 2) % TCPOLEN_SACK_PERBLOCK) == 0)
				FUNC1(skb, tcph, optoff + 2,
							optoff+op[1],
							&seqadj->seq[!dir]);
			optoff += op[1];
		}
	}
	return 1;
}