#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_7__ {int /*<<< orphan*/  spi; } ;
struct TYPE_6__ {scalar_t__ dev; } ;
struct xfrm_state {TYPE_2__ id; struct crypto_aead* data; TYPE_1__ xso; } ;
struct TYPE_8__ {scalar_t__ hi; scalar_t__ low; } ;
struct xfrm_offload {int flags; TYPE_3__ seq; int /*<<< orphan*/  proto; } ;
struct sk_buff {scalar_t__ dev; int len; } ;
struct ipv6hdr {int dummy; } ;
struct ip_esp_hdr {int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct esp_info {int inplace; int tfclen; int clen; int plen; int tailen; scalar_t__ nfrags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  proto; } ;
struct crypto_aead {int dummy; } ;
typedef  int netdev_features_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_10__ {int /*<<< orphan*/  payload_len; } ;
struct TYPE_9__ {scalar_t__ gso_segs; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int CRYPTO_FALLBACK ; 
 int EINVAL ; 
 int IPV6_MAXPLEN ; 
 int NETIF_F_HW_ESP ; 
 int XFRM_GSO_SEGMENT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct crypto_aead*) ; 
 int FUNC3 (struct crypto_aead*) ; 
 scalar_t__ FUNC4 (struct xfrm_state*,struct sk_buff*,struct esp_info*) ; 
 int FUNC5 (struct xfrm_state*,struct sk_buff*,struct esp_info*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct ip_esp_hdr* FUNC8 (struct sk_buff*) ; 
 TYPE_5__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (struct sk_buff*) ; 
 struct xfrm_offload* FUNC15 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC16(struct xfrm_state *x, struct sk_buff *skb,  netdev_features_t features)
{
	int len;
	int err;
	int alen;
	int blksize;
	struct xfrm_offload *xo;
	struct ip_esp_hdr *esph;
	struct crypto_aead *aead;
	struct esp_info esp;
	bool hw_offload = true;
	__u32 seq;

	esp.inplace = true;

	xo = FUNC15(skb);

	if (!xo)
		return -EINVAL;

	if (!(features & NETIF_F_HW_ESP) || x->xso.dev != skb->dev) {
		xo->flags |= CRYPTO_FALLBACK;
		hw_offload = false;
	}

	esp.proto = xo->proto;

	/* skb is pure payload to encrypt */

	aead = x->data;
	alen = FUNC2(aead);

	esp.tfclen = 0;
	/* XXX: Add support for tfc padding here. */

	blksize = FUNC0(FUNC3(aead), 4);
	esp.clen = FUNC0(skb->len + 2 + esp.tfclen, blksize);
	esp.plen = esp.clen - skb->len - esp.tfclen;
	esp.tailen = esp.tfclen + esp.plen + alen;

	if (!hw_offload || (hw_offload && !FUNC11(skb))) {
		esp.nfrags = FUNC4(x, skb, &esp);
		if (esp.nfrags < 0)
			return esp.nfrags;
	}

	seq = xo->seq.low;

	esph = FUNC8(skb);
	esph->spi = x->id.spi;

	FUNC13(skb, -FUNC12(skb));

	if (xo->flags & XFRM_GSO_SEGMENT) {
		esph->seq_no = FUNC6(seq);

		if (!FUNC11(skb))
			xo->seq.low++;
		else
			xo->seq.low += FUNC14(skb)->gso_segs;
	}

	esp.seqno = FUNC1(xo->seq.low + ((u64)xo->seq.hi << 32));

	len = skb->len - sizeof(struct ipv6hdr);
	if (len > IPV6_MAXPLEN)
		len = 0;

	FUNC9(skb)->payload_len = FUNC7(len);

	if (hw_offload)
		return 0;

	err = FUNC5(x, skb, &esp);
	if (err)
		return err;

	FUNC10(skb);

	return 0;
}