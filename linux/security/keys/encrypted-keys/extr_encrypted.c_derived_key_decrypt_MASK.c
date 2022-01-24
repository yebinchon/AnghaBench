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
struct encrypted_key_payload {int decrypted_datalen; int /*<<< orphan*/  iv; int /*<<< orphan*/ * decrypted_data; int /*<<< orphan*/ * encrypted_data; } ;
struct crypto_skcipher {int dummy; } ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct skcipher_request*) ; 
 int FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  blksize ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*) ; 
 int FUNC3 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct encrypted_key_payload*) ; 
 int /*<<< orphan*/  FUNC6 (struct encrypted_key_payload*,unsigned int) ; 
 struct skcipher_request* FUNC7 (int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct encrypted_key_payload *epayload,
			       const u8 *derived_key,
			       unsigned int derived_keylen)
{
	struct scatterlist sg_in[1];
	struct scatterlist sg_out[2];
	struct crypto_skcipher *tfm;
	struct skcipher_request *req;
	unsigned int encrypted_datalen;
	u8 iv[AES_BLOCK_SIZE];
	u8 *pad;
	int ret;

	/* Throwaway buffer to hold the unused zero padding at the end */
	pad = FUNC9(AES_BLOCK_SIZE, GFP_KERNEL);
	if (!pad)
		return -ENOMEM;

	encrypted_datalen = FUNC11(epayload->decrypted_datalen, blksize);
	req = FUNC7(derived_key, derived_keylen);
	ret = FUNC1(req);
	if (FUNC0(req))
		goto out;
	FUNC6(epayload, encrypted_datalen);

	FUNC12(sg_in, 1);
	FUNC12(sg_out, 2);
	FUNC13(sg_in, epayload->encrypted_data, encrypted_datalen);
	FUNC13(&sg_out[0], epayload->decrypted_data,
		   epayload->decrypted_datalen);
	FUNC13(&sg_out[1], pad, AES_BLOCK_SIZE);

	FUNC10(iv, epayload->iv, sizeof(iv));
	FUNC15(req, sg_in, sg_out, encrypted_datalen, iv);
	ret = FUNC3(req);
	tfm = FUNC4(req);
	FUNC14(req);
	FUNC2(tfm);
	if (ret < 0)
		goto out;
	FUNC5(epayload);
out:
	FUNC8(pad);
	return ret;
}