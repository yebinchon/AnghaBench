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
struct nfs_pageio_descriptor {int pg_error; } ;
struct nfs_page {int /*<<< orphan*/  wb_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 int /*<<< orphan*/  NFSIOS_WRITEPAGES ; 
 int /*<<< orphan*/  PG_CLEAN ; 
 int FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 struct nfs_page* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_page*,int) ; 
 TYPE_1__* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct nfs_pageio_descriptor *pgio,
				struct page *page)
{
	struct nfs_page *req;
	int ret = 0;

	req = FUNC6(page);
	if (!req)
		goto out;
	ret = FUNC1(req);
	if (FUNC0(req))
		goto out;

	FUNC9(page);
	FUNC2(FUNC12(PG_CLEAN, &req->wb_flags));

	/* If there is a fatal error that covers this write, just exit */
	ret = pgio->pg_error;
	if (FUNC5(ret))
		goto out_launder;

	ret = 0;
	if (!FUNC7(pgio, req)) {
		ret = pgio->pg_error;
		/*
		 * Remove the problematic req upon fatal errors on the server
		 */
		if (FUNC4(ret)) {
			if (FUNC5(ret))
				goto out_launder;
		} else
			ret = -EAGAIN;
		FUNC8(req);
		pgio->pg_error = 0;
	} else
		FUNC3(FUNC11(page)->host,
				NFSIOS_WRITEPAGES, 1);
out:
	return ret;
out_launder:
	FUNC10(req, ret);
	return 0;
}