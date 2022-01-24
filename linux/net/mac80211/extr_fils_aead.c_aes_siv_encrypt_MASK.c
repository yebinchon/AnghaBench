#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
typedef  struct crypto_skcipher crypto_shash ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct crypto_skcipher*,size_t,int const**,size_t*,int*) ; 
 struct crypto_skcipher* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_skcipher* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_skcipher*) ; 
 int FUNC7 (struct crypto_skcipher*,int const*,size_t) ; 
 int FUNC8 (struct skcipher_request*) ; 
 int FUNC9 (struct crypto_skcipher*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int* FUNC11 (int const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int*,size_t) ; 
 struct skcipher_request* FUNC14 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,size_t,int*) ; 

__attribute__((used)) static int FUNC17(const u8 *key, size_t key_len,
			   const u8 *plain, size_t plain_len,
			   size_t num_elem, const u8 *addr[],
			   size_t len[], u8 *out)
{
	u8 v[AES_BLOCK_SIZE];
	struct crypto_shash *tfm;
	struct crypto_skcipher *tfm2;
	struct skcipher_request *req;
	int res;
	struct scatterlist src[1], dst[1];
	u8 *tmp;

	key_len /= 2; /* S2V key || CTR key */

	addr[num_elem] = plain;
	len[num_elem] = plain_len;
	num_elem++;

	/* S2V */

	tfm = FUNC3("cmac(aes)", 0, 0);
	if (FUNC0(tfm))
		return FUNC1(tfm);
	/* K1 for S2V */
	res = FUNC7(tfm, key, key_len);
	if (!res)
		res = FUNC2(tfm, num_elem, addr, len, v);
	FUNC5(tfm);
	if (res)
		return res;

	/* Use a temporary buffer of the plaintext to handle need for
	 * overwriting this during AES-CTR.
	 */
	tmp = FUNC11(plain, plain_len, GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	/* IV for CTR before encrypted data */
	FUNC12(out, v, AES_BLOCK_SIZE);

	/* Synthetic IV to be used as the initial counter in CTR:
	 * Q = V bitand (1^64 || 0^1 || 1^31 || 0^1 || 1^31)
	 */
	v[8] &= 0x7f;
	v[12] &= 0x7f;

	/* CTR */

	tfm2 = FUNC4("ctr(aes)", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm2)) {
		FUNC10(tmp);
		return FUNC1(tfm2);
	}
	/* K2 for CTR */
	res = FUNC9(tfm2, key + key_len, key_len);
	if (res)
		goto fail;

	req = FUNC14(tfm2, GFP_KERNEL);
	if (!req) {
		res = -ENOMEM;
		goto fail;
	}

	FUNC13(src, tmp, plain_len);
	FUNC13(dst, out + AES_BLOCK_SIZE, plain_len);
	FUNC16(req, src, dst, plain_len, v);
	res = FUNC8(req);
	FUNC15(req);
fail:
	FUNC10(tmp);
	FUNC6(tfm2);
	return res;
}