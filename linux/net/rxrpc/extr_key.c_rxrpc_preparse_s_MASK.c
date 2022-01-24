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
struct TYPE_2__ {struct crypto_skcipher** data; } ;
struct key_preparsed_payload {int datalen; TYPE_1__ payload; int /*<<< orphan*/  data; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct crypto_skcipher* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct key_preparsed_payload *prep)
{
	struct crypto_skcipher *ci;

	FUNC3("%zu", prep->datalen);

	if (prep->datalen != 8)
		return -EINVAL;

	FUNC7(&prep->payload.data[2], prep->data, 8);

	ci = FUNC5("pcbc(des)", 0, CRYPTO_ALG_ASYNC);
	if (FUNC1(ci)) {
		FUNC4(" = %ld", FUNC2(ci));
		return FUNC2(ci);
	}

	if (FUNC6(ci, prep->data, 8) < 0)
		FUNC0();

	prep->payload.data[0] = ci;
	FUNC4(" = 0");
	return 0;
}