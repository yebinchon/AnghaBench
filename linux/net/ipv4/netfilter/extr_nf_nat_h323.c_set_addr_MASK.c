#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct tcphdr {int doff; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  _tcph ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct nf_conn* FUNC3 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,int,char*,int) ; 
 struct tcphdr* FUNC6 (struct sk_buff*,int,int,struct tcphdr*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, unsigned int protoff,
		    unsigned char **data, int dataoff,
		    unsigned int addroff, __be32 ip, __be16 port)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC3(skb, &ctinfo);
	struct {
		__be32 ip;
		__be16 port;
	} __attribute__ ((__packed__)) buf;
	const struct tcphdr *th;
	struct tcphdr _tcph;

	buf.ip = ip;
	buf.port = port;
	addroff += dataoff;

	if (FUNC0(skb)->protocol == IPPROTO_TCP) {
		if (!FUNC4(skb, ct, ctinfo,
					      protoff, addroff, sizeof(buf),
					      (char *) &buf, sizeof(buf))) {
			FUNC2("nf_nat_h323: nf_nat_mangle_tcp_packet error\n");
			return -1;
		}

		/* Relocate data pointer */
		th = FUNC6(skb, FUNC1(skb),
					sizeof(_tcph), &_tcph);
		if (th == NULL)
			return -1;
		*data = skb->data + FUNC1(skb) + th->doff * 4 + dataoff;
	} else {
		if (!FUNC5(skb, ct, ctinfo,
					      protoff, addroff, sizeof(buf),
					      (char *) &buf, sizeof(buf))) {
			FUNC2("nf_nat_h323: nf_nat_mangle_udp_packet error\n");
			return -1;
		}
		/* nf_nat_mangle_udp_packet uses skb_ensure_writable() to copy
		 * or pull everything in a linear buffer, so we can safely
		 * use the skb pointers now */
		*data = skb->data + FUNC1(skb) + sizeof(struct udphdr);
	}

	return 0;
}