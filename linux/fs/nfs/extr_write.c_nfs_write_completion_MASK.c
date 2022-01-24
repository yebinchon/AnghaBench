#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  verifier; } ;
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int /*<<< orphan*/  (* release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  io_completion; int /*<<< orphan*/  pgio_mirror_idx; int /*<<< orphan*/  lseg; TYPE_1__ verf; int /*<<< orphan*/  error; int /*<<< orphan*/  flags; TYPE_2__ pages; int /*<<< orphan*/  inode; } ;
struct nfs_page {int /*<<< orphan*/  wb_verf; scalar_t__ wb_nio; int /*<<< orphan*/  wb_page; scalar_t__ wb_bytes; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_ERROR ; 
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct nfs_page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_page*,int /*<<< orphan*/ ,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct nfs_pgio_header *hdr)
{
	struct nfs_commit_info cinfo;
	unsigned long bytes = 0;

	if (FUNC15(NFS_IOHDR_REDO, &hdr->flags))
		goto out;
	FUNC3(&cinfo, hdr->inode);
	while (!FUNC0(&hdr->pages)) {
		struct nfs_page *req = FUNC6(hdr->pages.next);

		bytes += req->wb_bytes;
		FUNC7(req);
		if (FUNC15(NFS_IOHDR_ERROR, &hdr->flags) &&
		    (hdr->good_bytes < bytes)) {
			FUNC11(FUNC13(req->wb_page));
			FUNC8(req->wb_page, hdr->error);
			goto remove_req;
		}
		if (FUNC12(hdr)) {
			/* Reset wb_nio, since the write was successful. */
			req->wb_nio = 0;
			FUNC1(&req->wb_verf, &hdr->verf.verifier, sizeof(req->wb_verf));
			FUNC9(req, hdr->lseg, &cinfo,
				hdr->pgio_mirror_idx);
			goto next;
		}
remove_req:
		FUNC4(req);
next:
		FUNC2(req);
		FUNC10(req);
	}
out:
	FUNC5(hdr->io_completion);
	hdr->release(hdr);
}