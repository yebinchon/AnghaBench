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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; struct crypto_aead* data; } ;
struct scatterlist {int dummy; } ;
struct esp_output_extra {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ src; scalar_t__ dst; } ;

/* Variables and functions */
 int XFRM_STATE_ESN ; 
 struct esp_output_extra* FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (struct crypto_aead*,void*,int) ; 
 struct aead_request* FUNC2 (struct crypto_aead*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC6(struct xfrm_state *x, void *tmp)
{
	struct esp_output_extra *extra = FUNC0(tmp);
	struct crypto_aead *aead = x->data;
	int extralen = 0;
	u8 *iv;
	struct aead_request *req;
	struct scatterlist *sg;

	if (x->props.flags & XFRM_STATE_ESN)
		extralen += sizeof(*extra);

	extra = FUNC0(tmp);
	iv = FUNC1(aead, tmp, extralen);
	req = FUNC2(aead, iv);

	/* Unref skb_frag_pages in the src scatterlist if necessary.
	 * Skip the first sg which comes from skb->data.
	 */
	if (req->src != req->dst)
		for (sg = FUNC4(req->src); sg; sg = FUNC4(sg))
			FUNC3(FUNC5(sg));
}