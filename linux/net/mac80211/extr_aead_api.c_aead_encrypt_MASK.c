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
struct scatterlist {int /*<<< orphan*/  length; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct scatterlist*,struct scatterlist*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,struct crypto_aead*) ; 
 size_t FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct crypto_aead*) ; 
 struct aead_request* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int /*<<< orphan*/ *,size_t) ; 

int FUNC11(struct crypto_aead *tfm, u8 *b_0, u8 *aad, size_t aad_len,
		 u8 *data, size_t data_len, u8 *mic)
{
	size_t mic_len = FUNC3(tfm);
	struct scatterlist sg[3];
	struct aead_request *aead_req;
	int reqsize = sizeof(*aead_req) + FUNC5(tfm);
	u8 *__aad;

	aead_req = FUNC6(reqsize + aad_len, GFP_ATOMIC);
	if (!aead_req)
		return -ENOMEM;

	__aad = (u8 *)aead_req + reqsize;
	FUNC8(__aad, aad, aad_len);

	FUNC9(sg, 3);
	FUNC10(&sg[0], __aad, aad_len);
	FUNC10(&sg[1], data, data_len);
	FUNC10(&sg[2], mic, mic_len);

	FUNC2(aead_req, tfm);
	FUNC1(aead_req, sg, sg, data_len, b_0);
	FUNC0(aead_req, sg[0].length);

	FUNC4(aead_req);
	FUNC7(aead_req);

	return 0;
}