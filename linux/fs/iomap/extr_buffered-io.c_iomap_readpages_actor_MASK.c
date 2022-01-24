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
struct iomap_readpage_ctx {int cur_page_in_bio; int /*<<< orphan*/ * cur_page; int /*<<< orphan*/  pages; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct inode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct inode*,scalar_t__,scalar_t__,struct iomap_readpage_ctx*,struct iomap*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static loff_t
FUNC5(struct inode *inode, loff_t pos, loff_t length,
		void *data, struct iomap *iomap)
{
	struct iomap_readpage_ctx *ctx = data;
	loff_t done, ret;

	for (done = 0; done < length; done += ret) {
		if (ctx->cur_page && FUNC2(pos + done) == 0) {
			if (!ctx->cur_page_in_bio)
				FUNC4(ctx->cur_page);
			FUNC3(ctx->cur_page);
			ctx->cur_page = NULL;
		}
		if (!ctx->cur_page) {
			ctx->cur_page = FUNC0(inode, ctx->pages,
					pos, length, &done);
			if (!ctx->cur_page)
				break;
			ctx->cur_page_in_bio = false;
		}
		ret = FUNC1(inode, pos + done, length - done,
				ctx, iomap);
	}

	return done;
}