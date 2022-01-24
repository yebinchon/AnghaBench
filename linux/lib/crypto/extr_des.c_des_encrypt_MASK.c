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
typedef  int /*<<< orphan*/  u32 ;
struct des_ctx {int /*<<< orphan*/ * expkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(const struct des_ctx *ctx, u8 *dst, const u8 *src)
{
	const u32 *K = ctx->expkey;
	u32 L, R, A, B;
	int i;

	L = FUNC3(src);
	R = FUNC3(src + 4);

	FUNC1(L, R, A);
	for (i = 0; i < 8; i++) {
		FUNC2(L, R, A, B, K, 2);
		FUNC2(R, L, A, B, K, 2);
	}
	FUNC0(R, L, A);

	FUNC4(R, dst);
	FUNC4(L, dst + 4);
}