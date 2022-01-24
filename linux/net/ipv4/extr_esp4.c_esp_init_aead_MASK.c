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
struct xfrm_state {char* geniv; TYPE_1__* aead; struct crypto_aead* data; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {char* alg_name; int alg_key_len; int alg_icv_len; int /*<<< orphan*/  alg_key; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*,int) ; 
 int FUNC3 (struct crypto_aead*,int /*<<< orphan*/ ,int) ; 
 struct crypto_aead* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x)
{
	char aead_name[CRYPTO_MAX_ALG_NAME];
	struct crypto_aead *aead;
	int err;

	err = -ENAMETOOLONG;
	if (FUNC5(aead_name, CRYPTO_MAX_ALG_NAME, "%s(%s)",
		     x->geniv, x->aead->alg_name) >= CRYPTO_MAX_ALG_NAME)
		goto error;

	aead = FUNC4(aead_name, 0, 0);
	err = FUNC1(aead);
	if (FUNC0(aead))
		goto error;

	x->data = aead;

	err = FUNC3(aead, x->aead->alg_key,
				 (x->aead->alg_key_len + 7) / 8);
	if (err)
		goto error;

	err = FUNC2(aead, x->aead->alg_icv_len / 8);
	if (err)
		goto error;

error:
	return err;
}