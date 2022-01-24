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
struct page {int dummy; } ;
struct nfs_readdesc {TYPE_1__* pgio; int /*<<< orphan*/  ctx; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int pg_error; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC1 (struct nfs_page*) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 unsigned int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*,int) ; 
 int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC10(void *data, struct page *page)
{
	struct nfs_readdesc *desc = (struct nfs_readdesc *)data;
	struct nfs_page *new;
	unsigned int len;
	int error;

	len = FUNC4(page);
	if (len == 0)
		return FUNC7(page);

	new = FUNC2(desc->ctx, page, 0, len);
	if (FUNC0(new))
		goto out_error;

	if (len < PAGE_SIZE)
		FUNC9(page, len, PAGE_SIZE);
	if (!FUNC5(desc->pgio, new)) {
		FUNC3(new);
		error = desc->pgio->pg_error;
		FUNC6(new, error);
		goto out;
	}
	return 0;
out_error:
	error = FUNC1(new);
	FUNC8(page);
out:
	return error;
}