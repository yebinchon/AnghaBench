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
typedef  scalar_t__ u64 ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_fid {int iounit; int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int msize; int /*<<< orphan*/  proto_version; TYPE_1__* trans_mod; } ;
struct iov_iter {int dummy; } ;
struct TYPE_2__ {scalar_t__ zc_request; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int P9_IOHDRSZ ; 
 int /*<<< orphan*/  P9_TWRITE ; 
 int /*<<< orphan*/  P9_ZC_HDR_SZ ; 
 int FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*,int) ; 
 int FUNC3 (struct iov_iter*) ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int,struct iov_iter*) ; 
 struct p9_req_t* FUNC5 (struct p9_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct iov_iter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_client*,int /*<<< orphan*/ *) ; 

int
FUNC11(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
{
	struct p9_client *clnt = fid->clnt;
	struct p9_req_t *req;
	int total = 0;
	*err = 0;

	FUNC6(P9_DEBUG_9P, ">>> TWRITE fid %d offset %llu count %zd\n",
				fid->fid, (unsigned long long) offset,
				FUNC3(from));

	while (FUNC3(from)) {
		int count = FUNC3(from);
		int rsize = fid->iounit;
		if (!rsize || rsize > clnt->msize-P9_IOHDRSZ)
			rsize = clnt->msize - P9_IOHDRSZ;

		if (count < rsize)
			rsize = count;

		/* Don't bother zerocopy for small IO (< 1024) */
		if (clnt->trans_mod->zc_request && rsize > 1024) {
			req = FUNC5(clnt, P9_TWRITE, NULL, from, 0,
					       rsize, P9_ZC_HDR_SZ, "dqd",
					       fid->fid, offset, rsize);
		} else {
			req = FUNC4(clnt, P9_TWRITE, "dqV", fid->fid,
						    offset, rsize, from);
		}
		if (FUNC0(req)) {
			*err = FUNC1(req);
			break;
		}

		*err = FUNC8(&req->rc, clnt->proto_version, "d", &count);
		if (*err) {
			FUNC10(clnt, &req->rc);
			FUNC7(clnt, req);
			break;
		}
		if (rsize < count) {
			FUNC9("bogus RWRITE count (%d > %d)\n", count, rsize);
			count = rsize;
		}

		FUNC6(P9_DEBUG_9P, "<<< RWRITE count %d\n", count);

		FUNC7(clnt, req);
		FUNC2(from, count);
		total += count;
		offset += count;
	}
	return total;
}