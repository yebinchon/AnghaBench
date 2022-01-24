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
typedef  int /*<<< orphan*/  zero_nonce ;
typedef  int /*<<< orphan*/  u8 ;
struct big_key_buf {int /*<<< orphan*/  sg; } ;
struct aead_request {int dummy; } ;
typedef  enum big_key_op { ____Placeholder_big_key_op } big_key_op ;

/* Variables and functions */
 int BIG_KEY_ENC ; 
 int BIG_KEY_IV_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EAGAIN ; 
 int /*<<< orphan*/  ENC_KEY_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  big_key_aead ; 
 int /*<<< orphan*/  big_key_aead_lock ; 
 int FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct aead_request*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(enum big_key_op op, struct big_key_buf *buf, size_t datalen, u8 *key)
{
	int ret;
	struct aead_request *aead_req;
	/* We always use a zero nonce. The reason we can get away with this is
	 * because we're using a different randomly generated key for every
	 * different encryption. Notably, too, key_type_big_key doesn't define
	 * an .update function, so there's no chance we'll wind up reusing the
	 * key to encrypt updated data. Simply put: one key, one encryption.
	 */
	u8 zero_nonce[BIG_KEY_IV_SIZE];

	aead_req = FUNC0(big_key_aead, GFP_KERNEL);
	if (!aead_req)
		return -ENOMEM;

	FUNC8(zero_nonce, 0, sizeof(zero_nonce));
	FUNC4(aead_req, buf->sg, buf->sg, datalen, zero_nonce);
	FUNC3(aead_req, CRYPTO_TFM_REQ_MAY_SLEEP, NULL, NULL);
	FUNC2(aead_req, 0);

	FUNC9(&big_key_aead_lock);
	if (FUNC7(big_key_aead, key, ENC_KEY_SIZE)) {
		ret = -EAGAIN;
		goto error;
	}
	if (op == BIG_KEY_ENC)
		ret = FUNC6(aead_req);
	else
		ret = FUNC5(aead_req);
error:
	FUNC10(&big_key_aead_lock);
	FUNC1(aead_req);
	return ret;
}