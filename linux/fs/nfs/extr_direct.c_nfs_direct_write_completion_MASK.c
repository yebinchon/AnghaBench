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
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_header {scalar_t__ good_bytes; int /*<<< orphan*/  (* release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  ds_commit_idx; int /*<<< orphan*/  lseg; TYPE_1__ pages; int /*<<< orphan*/  flags; struct nfs_direct_req* dreq; } ;
struct nfs_page {int /*<<< orphan*/  wb_kref; } ;
struct nfs_direct_req {scalar_t__ flags; int /*<<< orphan*/  lock; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 scalar_t__ NFS_ODIRECT_DO_COMMIT ; 
 scalar_t__ NFS_ODIRECT_RESCHED_WRITES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_direct_req*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_direct_req*,struct nfs_pgio_header*) ; 
 scalar_t__ FUNC4 (struct nfs_direct_req*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_commit_info*,struct nfs_direct_req*) ; 
 struct nfs_page* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_page*,int /*<<< orphan*/ ,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_page*) ; 
 scalar_t__ FUNC11 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC12 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct nfs_pgio_header *hdr)
{
	struct nfs_direct_req *dreq = hdr->dreq;
	struct nfs_commit_info cinfo;
	bool request_commit = false;
	struct nfs_page *req = FUNC7(hdr->pages.next);

	FUNC6(&cinfo, dreq);

	FUNC13(&dreq->lock);
	if (FUNC16(NFS_IOHDR_REDO, &hdr->flags)) {
		FUNC14(&dreq->lock);
		goto out_put;
	}

	FUNC2(dreq, hdr);
	if (hdr->good_bytes != 0) {
		if (FUNC11(hdr)) {
			if (dreq->flags == NFS_ODIRECT_RESCHED_WRITES)
				request_commit = true;
			else if (dreq->flags == 0) {
				FUNC3(dreq, hdr);
				request_commit = true;
				dreq->flags = NFS_ODIRECT_DO_COMMIT;
			} else if (dreq->flags == NFS_ODIRECT_DO_COMMIT) {
				request_commit = true;
				if (FUNC4(dreq, hdr))
					dreq->flags =
						NFS_ODIRECT_RESCHED_WRITES;
			}
		}
	}
	FUNC14(&dreq->lock);

	while (!FUNC1(&hdr->pages)) {

		req = FUNC7(hdr->pages.next);
		FUNC8(req);
		if (request_commit) {
			FUNC0(&req->wb_kref);
			FUNC9(req, hdr->lseg, &cinfo,
				hdr->ds_commit_idx);
		}
		FUNC10(req);
	}

out_put:
	if (FUNC12(dreq))
		FUNC5(dreq);
	hdr->release(hdr);
}