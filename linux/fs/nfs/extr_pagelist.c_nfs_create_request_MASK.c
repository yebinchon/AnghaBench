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
struct page {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
typedef  struct nfs_page nfs_lock_context ;

/* Variables and functions */
 struct nfs_page* FUNC0 (struct nfs_page*) ; 
 scalar_t__ FUNC1 (struct nfs_page*) ; 
 struct nfs_page* FUNC2 (struct nfs_page*,struct page*,unsigned int,unsigned int,unsigned int) ; 
 struct nfs_page* FUNC3 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 

struct nfs_page *
FUNC6(struct nfs_open_context *ctx, struct page *page,
		   unsigned int offset, unsigned int count)
{
	struct nfs_lock_context *l_ctx = FUNC3(ctx);
	struct nfs_page *ret;

	if (FUNC1(l_ctx))
		return FUNC0(l_ctx);
	ret = FUNC2(l_ctx, page, offset, offset, count);
	if (!FUNC1(ret))
		FUNC4(ret, NULL);
	FUNC5(l_ctx);
	return ret;
}