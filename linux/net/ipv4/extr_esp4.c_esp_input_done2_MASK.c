#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ a4; } ;
typedef  TYPE_3__ xfrm_address_t ;
struct TYPE_6__ {scalar_t__ a4; } ;
struct TYPE_7__ {scalar_t__ mode; TYPE_1__ saddr; } ;
struct xfrm_state {TYPE_2__ props; struct xfrm_encap_tmpl* encap; struct crypto_aead* data; } ;
struct xfrm_offload {int flags; } ;
struct xfrm_encap_tmpl {scalar_t__ encap_sport; } ;
struct udphdr {scalar_t__ source; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct iphdr {int ihl; scalar_t__ saddr; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int CRYPTO_DONE ; 
 int EINVAL ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int IPPROTO_NONE ; 
 scalar_t__ XFRM_MODE_TRANSPORT ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 int FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 struct xfrm_state* FUNC11 (struct sk_buff*) ; 
 struct xfrm_offload* FUNC12 (struct sk_buff*) ; 

int FUNC13(struct sk_buff *skb, int err)
{
	const struct iphdr *iph;
	struct xfrm_state *x = FUNC11(skb);
	struct xfrm_offload *xo = FUNC12(skb);
	struct crypto_aead *aead = x->data;
	int hlen = sizeof(struct ip_esp_hdr) + FUNC1(aead);
	int ihl;

	if (!xo || (xo && !(xo->flags & CRYPTO_DONE)))
		FUNC4(FUNC0(skb)->tmp);

	if (FUNC10(err))
		goto out;

	err = FUNC2(skb);
	if (FUNC10(err < 0))
		goto out;

	iph = FUNC3(skb);
	ihl = iph->ihl * 4;

	if (x->encap) {
		struct xfrm_encap_tmpl *encap = x->encap;
		struct udphdr *uh = (void *)(FUNC6(skb) + ihl);

		/*
		 * 1) if the NAT-T peer's IP or port changed then
		 *    advertize the change to the keying daemon.
		 *    This is an inbound SA, so just compare
		 *    SRC ports.
		 */
		if (iph->saddr != x->props.saddr.a4 ||
		    uh->source != encap->encap_sport) {
			xfrm_address_t ipaddr;

			ipaddr.a4 = iph->saddr;
			FUNC5(x, &ipaddr, uh->source);

			/* XXX: perhaps add an extra
			 * policy check here, to see
			 * if we should allow or
			 * reject a packet from a
			 * different source
			 * address/port.
			 */
		}

		/*
		 * 2) ignore UDP/TCP checksums in case
		 *    of NAT-T in Transport Mode, or
		 *    perform other post-processing fixes
		 *    as per draft-ietf-ipsec-udp-encaps-06,
		 *    section 3.1.2
		 */
		if (x->props.mode == XFRM_MODE_TRANSPORT)
			skb->ip_summed = CHECKSUM_UNNECESSARY;
	}

	FUNC7(skb, hlen);
	if (x->props.mode == XFRM_MODE_TUNNEL)
		FUNC8(skb);
	else
		FUNC9(skb, -ihl);

	/* RFC4303: Drop dummy packets without any error */
	if (err == IPPROTO_NONE)
		err = -EINVAL;

out:
	return err;
}