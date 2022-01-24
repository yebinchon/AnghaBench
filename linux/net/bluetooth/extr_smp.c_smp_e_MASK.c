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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  const u8 ;
struct crypto_aes_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC3 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aes_ctx*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(const u8 *k, u8 *r)
{
	struct crypto_aes_ctx ctx;
	uint8_t tmp[16], data[16];
	int err;

	FUNC1("k %16phN r %16phN", k, r);

	/* The most significant octet of key corresponds to k[0] */
	FUNC5(k, tmp, 16);

	err = FUNC3(&ctx, tmp, 16);
	if (err) {
		FUNC0("cipher setkey failed: %d", err);
		return err;
	}

	/* Most significant octet of plaintextData corresponds to data[0] */
	FUNC5(r, data, 16);

	FUNC2(&ctx, data, data);

	/* Most significant octet of encryptedData corresponds to data[0] */
	FUNC5(data, r, 16);

	FUNC1("r %16phN", r);

	FUNC4(&ctx, sizeof (ctx));
	return err;
}