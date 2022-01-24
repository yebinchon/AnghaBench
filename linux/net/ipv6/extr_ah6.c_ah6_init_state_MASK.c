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
struct TYPE_8__ {int header_len; int mode; } ;
struct xfrm_state {struct ah_data* data; TYPE_4__ props; TYPE_3__* aalg; scalar_t__ encap; } ;
struct TYPE_5__ {int icv_fullbits; } ;
struct TYPE_6__ {TYPE_1__ auth; } ;
struct xfrm_algo_desc {TYPE_2__ uinfo; } ;
struct ipv6hdr {int dummy; } ;
struct ip_auth_hdr {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ah_data {int icv_full_len; int icv_trunc_len; struct crypto_ahash* ahash; } ;
struct TYPE_7__ {int alg_key_len; int alg_trunc_len; int /*<<< orphan*/  alg_name; int /*<<< orphan*/  alg_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct crypto_ahash*) ; 
 int FUNC2 (int) ; 
#define  XFRM_MODE_BEET 130 
#define  XFRM_MODE_TRANSPORT 129 
#define  XFRM_MODE_TUNNEL 128 
 int FUNC3 (struct crypto_ahash*) ; 
 scalar_t__ FUNC4 (struct crypto_ahash*,int /*<<< orphan*/ ,int) ; 
 struct crypto_ahash* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC7 (struct ah_data*) ; 
 struct ah_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,int) ; 
 struct xfrm_algo_desc* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct xfrm_state *x)
{
	struct ah_data *ahp = NULL;
	struct xfrm_algo_desc *aalg_desc;
	struct crypto_ahash *ahash;

	if (!x->aalg)
		goto error;

	if (x->encap)
		goto error;

	ahp = FUNC8(sizeof(*ahp), GFP_KERNEL);
	if (!ahp)
		return -ENOMEM;

	ahash = FUNC5(x->aalg->alg_name, 0, 0);
	if (FUNC1(ahash))
		goto error;

	ahp->ahash = ahash;
	if (FUNC4(ahash, x->aalg->alg_key,
			       (x->aalg->alg_key_len + 7) / 8))
		goto error;

	/*
	 * Lookup the algorithm description maintained by xfrm_algo,
	 * verify crypto transform properties, and store information
	 * we need for AH processing.  This lookup cannot fail here
	 * after a successful crypto_alloc_hash().
	 */
	aalg_desc = FUNC10(x->aalg->alg_name, 0);
	FUNC0(!aalg_desc);

	if (aalg_desc->uinfo.auth.icv_fullbits/8 !=
	    FUNC3(ahash)) {
		FUNC9("AH: %s digestsize %u != %hu\n",
			x->aalg->alg_name, FUNC3(ahash),
			aalg_desc->uinfo.auth.icv_fullbits/8);
		goto error;
	}

	ahp->icv_full_len = aalg_desc->uinfo.auth.icv_fullbits/8;
	ahp->icv_trunc_len = x->aalg->alg_trunc_len/8;

	x->props.header_len = FUNC2(sizeof(struct ip_auth_hdr) +
					  ahp->icv_trunc_len);
	switch (x->props.mode) {
	case XFRM_MODE_BEET:
	case XFRM_MODE_TRANSPORT:
		break;
	case XFRM_MODE_TUNNEL:
		x->props.header_len += sizeof(struct ipv6hdr);
		break;
	default:
		goto error;
	}
	x->data = ahp;

	return 0;

error:
	if (ahp) {
		FUNC6(ahp->ahash);
		FUNC7(ahp);
	}
	return -EINVAL;
}