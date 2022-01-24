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
struct nfs_page {int /*<<< orphan*/  wb_nio; int /*<<< orphan*/  wb_index; int /*<<< orphan*/  wb_page; int /*<<< orphan*/  wb_lock_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_page*) ; 
 struct nfs_page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*,struct nfs_page*) ; 

__attribute__((used)) static struct nfs_page *
FUNC4(struct nfs_page *req, struct nfs_page *last,
		  unsigned int pgbase, unsigned int offset,
		  unsigned int count)
{
	struct nfs_page *ret;

	ret = FUNC1(req->wb_lock_context, req->wb_page,
			pgbase, offset, count);
	if (!FUNC0(ret)) {
		FUNC2(ret);
		ret->wb_index = req->wb_index;
		FUNC3(ret, last);
		ret->wb_nio = req->wb_nio;
	}
	return ret;
}