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
typedef  unsigned int uint32_t ;
struct md4_ctx {int byte_count; char* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct md4_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char const*,unsigned int const) ; 

__attribute__((used)) static void FUNC2(struct md4_ctx *mctx,
		       const unsigned char *data, unsigned int len)
{
	const uint32_t avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

	mctx->byte_count += len;

	if (avail > len) {
		FUNC1((char *)mctx->block + (sizeof(mctx->block) - avail),
		       data, len);
		return;
	}

	FUNC1((char *)mctx->block + (sizeof(mctx->block) - avail),
	       data, avail);

	FUNC0(mctx);
	data += avail;
	len -= avail;

	while (len >= sizeof(mctx->block)) {
		FUNC1(mctx->block, data, sizeof(mctx->block));
		FUNC0(mctx);
		data += sizeof(mctx->block);
		len -= sizeof(mctx->block);
	}

	FUNC1(mctx->block, data, len);
}