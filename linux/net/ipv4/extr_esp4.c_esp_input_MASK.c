#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; struct crypto_aead* data; } ;
struct sk_buff {int len; int /*<<< orphan*/  ip_summed; } ;
struct scatterlist {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {void* tmp; } ;
struct TYPE_5__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int XFRM_STATE_ESN ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct crypto_aead*) ; 
 void* FUNC6 (struct crypto_aead*,int,int) ; 
 int /*<<< orphan*/  esp_input_done ; 
 int FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  esp_input_done_esn ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct scatterlist* FUNC10 (struct crypto_aead*,struct aead_request*) ; 
 int /*<<< orphan*/ * FUNC11 (void*) ; 
 int /*<<< orphan*/ * FUNC12 (struct crypto_aead*,void*,int) ; 
 struct aead_request* FUNC13 (struct crypto_aead*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 TYPE_2__* FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct xfrm_state *x, struct sk_buff *skb)
{
	struct crypto_aead *aead = x->data;
	struct aead_request *req;
	struct sk_buff *trailer;
	int ivlen = FUNC5(aead);
	int elen = skb->len - sizeof(struct ip_esp_hdr) - ivlen;
	int nfrags;
	int assoclen;
	int seqhilen;
	__be32 *seqhi;
	void *tmp;
	u8 *iv;
	struct scatterlist *sg;
	int err = -EINVAL;

	if (!FUNC15(skb, sizeof(struct ip_esp_hdr) + ivlen))
		goto out;

	if (elen <= 0)
		goto out;

	assoclen = sizeof(struct ip_esp_hdr);
	seqhilen = 0;

	if (x->props.flags & XFRM_STATE_ESN) {
		seqhilen += sizeof(__be32);
		assoclen += seqhilen;
	}

	if (!FUNC17(skb)) {
		if (!FUNC20(skb)) {
			nfrags = 1;

			goto skip_cow;
		} else if (!FUNC19(skb)) {
			nfrags = FUNC21(skb)->nr_frags;
			nfrags++;

			goto skip_cow;
		}
	}

	err = FUNC18(skb, 0, &trailer);
	if (err < 0)
		goto out;

	nfrags = err;

skip_cow:
	err = -ENOMEM;
	tmp = FUNC6(aead, nfrags, seqhilen);
	if (!tmp)
		goto out;

	FUNC0(skb)->tmp = tmp;
	seqhi = FUNC11(tmp);
	iv = FUNC12(aead, tmp, seqhilen);
	req = FUNC13(aead, iv);
	sg = FUNC10(aead, req);

	FUNC9(skb, seqhi);

	FUNC16(sg, nfrags);
	err = FUNC22(skb, sg, 0, skb->len);
	if (FUNC23(err < 0)) {
		FUNC14(tmp);
		goto out;
	}

	skb->ip_summed = CHECKSUM_NONE;

	if ((x->props.flags & XFRM_STATE_ESN))
		FUNC2(req, 0, esp_input_done_esn, skb);
	else
		FUNC2(req, 0, esp_input_done, skb);

	FUNC3(req, sg, sg, elen + ivlen, iv);
	FUNC1(req, assoclen);

	err = FUNC4(req);
	if (err == -EINPROGRESS)
		goto out;

	if ((x->props.flags & XFRM_STATE_ESN))
		FUNC8(skb);

	err = FUNC7(skb, err);

out:
	return err;
}