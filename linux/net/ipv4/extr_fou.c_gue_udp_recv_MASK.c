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
typedef  int u8 ;
typedef  int u16 ;
struct udphdr {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int /*<<< orphan*/  version; } ;
struct guehdr {int version; int hlen; int flags; int proto_ctype; int /*<<< orphan*/  control; } ;
struct fou {scalar_t__ family; int flags; } ;
typedef  int __be32 ;
struct TYPE_4__ {void* tot_len; } ;
struct TYPE_3__ {void* payload_len; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int FOU_F_REMCSUM_NOPARTIAL ; 
 int GUE_FLAG_PRIV ; 
 int GUE_LEN_PRIV ; 
 int GUE_PFLAG_REMCSUM ; 
 int GUE_PLEN_REMCSUM ; 
 int IPPROTO_IPIP ; 
 int IPPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 struct fou* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct fou*,int) ; 
 int FUNC3 (struct sk_buff*,struct guehdr*) ; 
 struct guehdr* FUNC4 (struct sk_buff*,struct guehdr*,void*,size_t,int,int) ; 
 void* FUNC5 (scalar_t__) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct guehdr*,size_t) ; 

__attribute__((used)) static int FUNC17(struct sock *sk, struct sk_buff *skb)
{
	struct fou *fou = FUNC1(sk);
	size_t len, optlen, hdrlen;
	struct guehdr *guehdr;
	void *data;
	u16 doffset = 0;
	u8 proto_ctype;

	if (!fou)
		return 1;

	len = sizeof(struct udphdr) + sizeof(struct guehdr);
	if (!FUNC11(skb, len))
		goto drop;

	guehdr = (struct guehdr *)&FUNC14(skb)[1];

	switch (guehdr->version) {
	case 0: /* Full GUE header present */
		break;

	case 1: {
		/* Direct encapsulation of IPv4 or IPv6 */

		int prot;

		switch (((struct iphdr *)guehdr)->version) {
		case 4:
			prot = IPPROTO_IPIP;
			break;
		case 6:
			prot = IPPROTO_IPV6;
			break;
		default:
			goto drop;
		}

		if (FUNC2(skb, fou, sizeof(struct udphdr)))
			goto drop;

		return -prot;
	}

	default: /* Undefined version */
		goto drop;
	}

	optlen = guehdr->hlen << 2;
	len += optlen;

	if (!FUNC11(skb, len))
		goto drop;

	/* guehdr may change after pull */
	guehdr = (struct guehdr *)&FUNC14(skb)[1];

	if (FUNC16(guehdr, optlen))
		goto drop;

	hdrlen = sizeof(struct guehdr) + optlen;

	if (fou->family == AF_INET)
		FUNC6(skb)->tot_len = FUNC5(FUNC10(FUNC6(skb)->tot_len) - len);
	else
		FUNC8(skb)->payload_len =
		    FUNC5(FUNC10(FUNC8(skb)->payload_len) - len);

	/* Pull csum through the guehdr now . This can be used if
	 * there is a remote checksum offload.
	 */
	FUNC12(skb, FUNC14(skb), len);

	data = &guehdr[1];

	if (guehdr->flags & GUE_FLAG_PRIV) {
		__be32 flags = *(__be32 *)(data + doffset);

		doffset += GUE_LEN_PRIV;

		if (flags & GUE_PFLAG_REMCSUM) {
			guehdr = FUNC4(skb, guehdr, data + doffset,
					     hdrlen, guehdr->proto_ctype,
					     !!(fou->flags &
						FOU_F_REMCSUM_NOPARTIAL));
			if (!guehdr)
				goto drop;

			data = &guehdr[1];

			doffset += GUE_PLEN_REMCSUM;
		}
	}

	if (FUNC15(guehdr->control))
		return FUNC3(skb, guehdr);

	proto_ctype = guehdr->proto_ctype;
	FUNC0(skb, sizeof(struct udphdr) + hdrlen);
	FUNC13(skb);

	if (FUNC7(skb))
		goto drop;

	return -proto_ctype;

drop:
	FUNC9(skb);
	return 0;
}