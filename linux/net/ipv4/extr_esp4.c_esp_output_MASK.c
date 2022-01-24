#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  spi; } ;
struct xfrm_state {TYPE_1__ id; scalar_t__ tfcpad; struct crypto_aead* data; } ;
struct xfrm_dst {int /*<<< orphan*/  child_mtu_cached; } ;
struct sk_buff {scalar_t__ len; } ;
struct ip_esp_hdr {int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct esp_info {int inplace; int tfclen; int clen; int plen; int tailen; scalar_t__ nfrags; int /*<<< orphan*/  seqno; struct ip_esp_hdr* esph; int /*<<< orphan*/  proto; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_6__ {scalar_t__ hi; scalar_t__ low; } ;
struct TYPE_7__ {TYPE_2__ output; } ;
struct TYPE_8__ {TYPE_3__ seq; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  IPPROTO_ESP ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct crypto_aead*) ; 
 int FUNC4 (struct crypto_aead*) ; 
 scalar_t__ FUNC5 (struct xfrm_state*,struct sk_buff*,struct esp_info*) ; 
 int FUNC6 (struct xfrm_state*,struct sk_buff*,struct esp_info*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct ip_esp_hdr* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xfrm_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct xfrm_state *x, struct sk_buff *skb)
{
	int alen;
	int blksize;
	struct ip_esp_hdr *esph;
	struct crypto_aead *aead;
	struct esp_info esp;

	esp.inplace = true;

	esp.proto = *FUNC11(skb);
	*FUNC11(skb) = IPPROTO_ESP;

	/* skb is pure payload to encrypt */

	aead = x->data;
	alen = FUNC3(aead);

	esp.tfclen = 0;
	if (x->tfcpad) {
		struct xfrm_dst *dst = (struct xfrm_dst *)FUNC10(skb);
		u32 padto;

		padto = FUNC9(x->tfcpad, FUNC14(x, dst->child_mtu_cached));
		if (skb->len < padto)
			esp.tfclen = padto - skb->len;
	}
	blksize = FUNC0(FUNC4(aead), 4);
	esp.clen = FUNC0(skb->len + 2 + esp.tfclen, blksize);
	esp.plen = esp.clen - skb->len - esp.tfclen;
	esp.tailen = esp.tfclen + esp.plen + alen;

	esp.esph = FUNC8(skb);

	esp.nfrags = FUNC5(x, skb, &esp);
	if (esp.nfrags < 0)
		return esp.nfrags;

	esph = esp.esph;
	esph->spi = x->id.spi;

	esph->seq_no = FUNC7(FUNC1(skb)->seq.output.low);
	esp.seqno = FUNC2(FUNC1(skb)->seq.output.low +
				 ((u64)FUNC1(skb)->seq.output.hi << 32));

	FUNC13(skb, -FUNC12(skb));

	return FUNC6(x, skb, &esp);
}