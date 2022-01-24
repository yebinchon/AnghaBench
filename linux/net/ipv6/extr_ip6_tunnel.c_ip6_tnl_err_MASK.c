#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/ * data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  payload_len; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ipv6_tlv_tnl_enc_lim {int /*<<< orphan*/  encap_limit; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  proto; } ;
struct ip6_tnl {TYPE_1__ parms; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  scalar_t__ __u8 ;
typedef  size_t __u32 ;
typedef  size_t __u16 ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ ICMPV6_ADDR_UNREACH ; 
#define  ICMPV6_DEST_UNREACH 132 
 scalar_t__ ICMPV6_EXC_HOPLIMIT ; 
 scalar_t__ ICMPV6_HDR_FIELD ; 
#define  ICMPV6_PARAMPROB 131 
#define  ICMPV6_PKT_TOOBIG 130 
#define  ICMPV6_TIME_EXCEED 129 
 size_t IPV6_MIN_MTU ; 
#define  NDISC_REDIRECT 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC4 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct sk_buff *skb, __u8 ipproto, struct inet6_skb_parm *opt,
	    u8 *type, u8 *code, int *msg, __u32 *info, int offset)
{
	const struct ipv6hdr *ipv6h = (const struct ipv6hdr *)skb->data;
	struct net *net = FUNC1(skb->dev);
	u8 rel_type = ICMPV6_DEST_UNREACH;
	u8 rel_code = ICMPV6_ADDR_UNREACH;
	__u32 rel_info = 0;
	struct ip6_tnl *t;
	int err = -ENOENT;
	int rel_msg = 0;
	u8 tproto;
	__u16 len;

	/* If the packet doesn't contain the original IPv6 header we are
	   in trouble since we might need the source address for further
	   processing of the error. */

	FUNC9();
	t = FUNC4(FUNC1(skb->dev), &ipv6h->daddr, &ipv6h->saddr);
	if (!t)
		goto out;

	tproto = FUNC0(t->parms.proto);
	if (tproto != ipproto && tproto != 0)
		goto out;

	err = 0;

	switch (*type) {
		struct ipv6_tlv_tnl_enc_lim *tel;
		__u32 mtu, teli;
	case ICMPV6_DEST_UNREACH:
		FUNC7("%s: Path to destination invalid or inactive!\n",
				    t->parms.name);
		rel_msg = 1;
		break;
	case ICMPV6_TIME_EXCEED:
		if ((*code) == ICMPV6_EXC_HOPLIMIT) {
			FUNC7("%s: Too small hop limit or routing loop in tunnel!\n",
					    t->parms.name);
			rel_msg = 1;
		}
		break;
	case ICMPV6_PARAMPROB:
		teli = 0;
		if ((*code) == ICMPV6_HDR_FIELD)
			teli = FUNC5(skb, skb->data);

		if (teli && teli == *info - 2) {
			tel = (struct ipv6_tlv_tnl_enc_lim *) &skb->data[teli];
			if (tel->encap_limit == 0) {
				FUNC7("%s: Too small encapsulation limit or routing loop in tunnel!\n",
						    t->parms.name);
				rel_msg = 1;
			}
		} else {
			FUNC7("%s: Recipient unable to parse tunneled packet!\n",
					    t->parms.name);
		}
		break;
	case ICMPV6_PKT_TOOBIG:
		FUNC6(skb, net, FUNC2(*info), 0, 0,
				FUNC11(net, NULL));
		mtu = *info - offset;
		if (mtu < IPV6_MIN_MTU)
			mtu = IPV6_MIN_MTU;
		len = sizeof(*ipv6h) + FUNC8(ipv6h->payload_len);
		if (len > mtu) {
			rel_type = ICMPV6_PKT_TOOBIG;
			rel_code = 0;
			rel_info = mtu;
			rel_msg = 1;
		}
		break;
	case NDISC_REDIRECT:
		FUNC3(skb, net, skb->dev->ifindex, 0,
			     FUNC11(net, NULL));
		break;
	}

	*type = rel_type;
	*code = rel_code;
	*info = rel_info;
	*msg = rel_msg;

out:
	FUNC10();
	return err;
}