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
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct encrypted_key_payload {unsigned int decrypted_datalen; int /*<<< orphan*/  iv; int /*<<< orphan*/  encrypted_data; int /*<<< orphan*/  decrypted_data; } ;
struct crypto_skcipher {int dummy; } ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (struct skcipher_request*) ; 
 int FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blksize ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct encrypted_key_payload*) ; 
 int /*<<< orphan*/  FUNC7 (struct encrypted_key_payload*,unsigned int) ; 
 struct skcipher_request* FUNC8 (int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 unsigned int FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct encrypted_key_payload *epayload,
			       const u8 *derived_key,
			       unsigned int derived_keylen)
{
	struct scatterlist sg_in[2];
	struct scatterlist sg_out[1];
	struct crypto_skcipher *tfm;
	struct skcipher_request *req;
	unsigned int encrypted_datalen;
	u8 iv[AES_BLOCK_SIZE];
	int ret;

	encrypted_datalen = FUNC11(epayload->decrypted_datalen, blksize);

	req = FUNC8(derived_key, derived_keylen);
	ret = FUNC1(req);
	if (FUNC0(req))
		goto out;
	FUNC6(epayload);

	FUNC12(sg_in, 2);
	FUNC13(&sg_in[0], epayload->decrypted_data,
		   epayload->decrypted_datalen);
	FUNC14(&sg_in[1], FUNC2(0), AES_BLOCK_SIZE, 0);

	FUNC12(sg_out, 1);
	FUNC13(sg_out, epayload->encrypted_data, encrypted_datalen);

	FUNC9(iv, epayload->iv, sizeof(iv));
	FUNC16(req, sg_in, sg_out, encrypted_datalen, iv);
	ret = FUNC4(req);
	tfm = FUNC5(req);
	FUNC15(req);
	FUNC3(tfm);
	if (ret < 0)
		FUNC10("encrypted_key: failed to encrypt (%d)\n", ret);
	else
		FUNC7(epayload, encrypted_datalen);
out:
	return ret;
}