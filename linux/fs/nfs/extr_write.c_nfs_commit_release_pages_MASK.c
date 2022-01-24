#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {int /*<<< orphan*/  writeback; } ;
struct nfs_page {scalar_t__ wb_page; int /*<<< orphan*/  wb_verf; int /*<<< orphan*/  wb_bytes; } ;
struct nfs_commit_info {int /*<<< orphan*/  mds; } ;
struct TYPE_9__ {int /*<<< orphan*/  verifier; } ;
struct TYPE_11__ {int /*<<< orphan*/  next; } ;
struct TYPE_7__ {int tk_status; } ;
struct nfs_commit_data {int /*<<< orphan*/  dreq; int /*<<< orphan*/  inode; TYPE_3__ verf; TYPE_5__ pages; TYPE_1__ task; } ;
struct TYPE_12__ {TYPE_2__* d_sb; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; TYPE_6__* dentry; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 scalar_t__ NFS_CONGESTION_OFF_THRESH ; 
 int /*<<< orphan*/  NFS_CONTEXT_RESEND_WRITES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_commit_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_page*) ; 
 struct nfs_page* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nfs_page*) ; 
 TYPE_4__* FUNC18 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC19 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC23(struct nfs_commit_data *data)
{
	struct nfs_page	*req;
	int status = data->task.tk_status;
	struct nfs_commit_info cinfo;
	struct nfs_server *nfss;

	while (!FUNC9(&data->pages)) {
		req = FUNC14(data->pages.next);
		FUNC15(req);
		if (req->wb_page)
			FUNC10(req->wb_page);

		FUNC6("NFS:       commit (%s/%llu %d@%lld)",
			FUNC18(req)->dentry->d_sb->s_id,
			(unsigned long long)FUNC0(FUNC5(FUNC18(req)->dentry)),
			req->wb_bytes,
			(long long)FUNC21(req));
		if (status < 0) {
			if (req->wb_page) {
				FUNC16(req->wb_page, status);
				FUNC13(req);
			}
			FUNC7(", error = %d\n", status);
			goto next;
		}

		/* Okay, COMMIT succeeded, apparently. Check the verifier
		 * returned by the server against all stored verfs. */
		if (!FUNC20(&req->wb_verf, &data->verf.verifier)) {
			/* We have a match */
			if (req->wb_page)
				FUNC13(req);
			FUNC7(" OK\n");
			goto next;
		}
		/* We have a mismatch. Write the page again */
		FUNC7(" mismatch\n");
		FUNC17(req);
		FUNC22(NFS_CONTEXT_RESEND_WRITES, &FUNC18(req)->flags);
	next:
		FUNC19(req);
		/* Latency breaker */
		FUNC4();
	}
	nfss = FUNC1(data->inode);
	if (FUNC2(&nfss->writeback) < NFS_CONGESTION_OFF_THRESH)
		FUNC3(FUNC8(data->inode), BLK_RW_ASYNC);

	FUNC12(&cinfo, data->inode, data->dreq);
	FUNC11(cinfo.mds);
}