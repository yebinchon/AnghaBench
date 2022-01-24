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
typedef  int u64 ;
struct lowpan_iphc_ctx {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOWPAN_IPHC_CTX_FLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void *data, u64 val)
{
	struct lowpan_iphc_ctx *ctx = data;

	if (val != 0 && val != 1)
		return -EINVAL;

	if (val)
		FUNC1(LOWPAN_IPHC_CTX_FLAG_ACTIVE, &ctx->flags);
	else
		FUNC0(LOWPAN_IPHC_CTX_FLAG_ACTIVE, &ctx->flags);

	return 0;
}