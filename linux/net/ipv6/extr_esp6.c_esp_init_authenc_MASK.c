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
struct TYPE_6__ {int flags; } ;
struct xfrm_state {TYPE_5__* ealg; TYPE_4__* aalg; struct crypto_aead* data; scalar_t__ geniv; TYPE_1__ props; } ;
struct TYPE_7__ {int icv_fullbits; } ;
struct TYPE_8__ {TYPE_2__ auth; } ;
struct xfrm_algo_desc {TYPE_3__ uinfo; } ;
struct rtattr {int /*<<< orphan*/  rta_len; int /*<<< orphan*/  rta_type; } ;
struct crypto_authenc_key_param {int /*<<< orphan*/  enckeylen; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_10__ {char* alg_name; int alg_key_len; int /*<<< orphan*/  alg_key; } ;
struct TYPE_9__ {char* alg_name; int alg_key_len; int alg_trunc_len; int /*<<< orphan*/  alg_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRYPTO_AUTHENC_KEYA_PARAM ; 
 int CRYPTO_MAX_ALG_NAME ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 struct crypto_authenc_key_param* FUNC3 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int XFRM_STATE_ESN ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct crypto_aead*) ; 
 int FUNC8 (struct crypto_aead*,int) ; 
 int FUNC9 (struct crypto_aead*,char*,unsigned int) ; 
 struct crypto_aead* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int,int) ; 
 int FUNC15 (char*,int,char*,char*,char*,char*,char*,char*) ; 
 struct xfrm_algo_desc* FUNC16 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct xfrm_state *x)
{
	struct crypto_aead *aead;
	struct crypto_authenc_key_param *param;
	struct rtattr *rta;
	char *key;
	char *p;
	char authenc_name[CRYPTO_MAX_ALG_NAME];
	unsigned int keylen;
	int err;

	err = -EINVAL;
	if (!x->ealg)
		goto error;

	err = -ENAMETOOLONG;

	if ((x->props.flags & XFRM_STATE_ESN)) {
		if (FUNC15(authenc_name, CRYPTO_MAX_ALG_NAME,
			     "%s%sauthencesn(%s,%s)%s",
			     x->geniv ?: "", x->geniv ? "(" : "",
			     x->aalg ? x->aalg->alg_name : "digest_null",
			     x->ealg->alg_name,
			     x->geniv ? ")" : "") >= CRYPTO_MAX_ALG_NAME)
			goto error;
	} else {
		if (FUNC15(authenc_name, CRYPTO_MAX_ALG_NAME,
			     "%s%sauthenc(%s,%s)%s",
			     x->geniv ?: "", x->geniv ? "(" : "",
			     x->aalg ? x->aalg->alg_name : "digest_null",
			     x->ealg->alg_name,
			     x->geniv ? ")" : "") >= CRYPTO_MAX_ALG_NAME)
			goto error;
	}

	aead = FUNC10(authenc_name, 0, 0);
	err = FUNC2(aead);
	if (FUNC1(aead))
		goto error;

	x->data = aead;

	keylen = (x->aalg ? (x->aalg->alg_key_len + 7) / 8 : 0) +
		 (x->ealg->alg_key_len + 7) / 8 + FUNC5(sizeof(*param));
	err = -ENOMEM;
	key = FUNC12(keylen, GFP_KERNEL);
	if (!key)
		goto error;

	p = key;
	rta = (void *)p;
	rta->rta_type = CRYPTO_AUTHENC_KEYA_PARAM;
	rta->rta_len = FUNC4(sizeof(*param));
	param = FUNC3(rta);
	p += FUNC5(sizeof(*param));

	if (x->aalg) {
		struct xfrm_algo_desc *aalg_desc;

		FUNC13(p, x->aalg->alg_key, (x->aalg->alg_key_len + 7) / 8);
		p += (x->aalg->alg_key_len + 7) / 8;

		aalg_desc = FUNC16(x->aalg->alg_name, 0);
		FUNC0(!aalg_desc);

		err = -EINVAL;
		if (aalg_desc->uinfo.auth.icv_fullbits / 8 !=
		    FUNC7(aead)) {
			FUNC14("ESP: %s digestsize %u != %hu\n",
				x->aalg->alg_name,
				FUNC7(aead),
				aalg_desc->uinfo.auth.icv_fullbits / 8);
			goto free_key;
		}

		err = FUNC8(
			aead, x->aalg->alg_trunc_len / 8);
		if (err)
			goto free_key;
	}

	param->enckeylen = FUNC6((x->ealg->alg_key_len + 7) / 8);
	FUNC13(p, x->ealg->alg_key, (x->ealg->alg_key_len + 7) / 8);

	err = FUNC9(aead, key, keylen);

free_key:
	FUNC11(key);

error:
	return err;
}