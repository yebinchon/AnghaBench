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
typedef  int u64 ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_fid {int iounit; int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int msize; int /*<<< orphan*/  proto_version; TYPE_1__* trans_mod; } ;
struct iov_iter {int dummy; } ;
struct TYPE_2__ {scalar_t__ zc_request; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int P9_IOHDRSZ ; 
 int /*<<< orphan*/  P9_TREAD ; 
 int FUNC1 (struct p9_req_t*) ; 
 int FUNC2 (char*,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,int) ; 
 int FUNC4 (struct iov_iter*) ; 
 struct p9_req_t* FUNC5 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 struct p9_req_t* FUNC6 (struct p9_client*,int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int*,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct p9_client*,int /*<<< orphan*/ *) ; 

int
FUNC12(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
{
	struct p9_client *clnt = fid->clnt;
	struct p9_req_t *req;
	int total = 0;
	*err = 0;

	FUNC7(P9_DEBUG_9P, ">>> TREAD fid %d offset %llu %d\n",
		   fid->fid, (unsigned long long) offset, (int)FUNC4(to));

	while (FUNC4(to)) {
		int count = FUNC4(to);
		int rsize, non_zc = 0;
		char *dataptr;

		rsize = fid->iounit;
		if (!rsize || rsize > clnt->msize-P9_IOHDRSZ)
			rsize = clnt->msize - P9_IOHDRSZ;

		if (count < rsize)
			rsize = count;

		/* Don't bother zerocopy for small IO (< 1024) */
		if (clnt->trans_mod->zc_request && rsize > 1024) {
			/*
			 * response header len is 11
			 * PDU Header(7) + IO Size (4)
			 */
			req = FUNC6(clnt, P9_TREAD, to, NULL, rsize,
					       0, 11, "dqd", fid->fid,
					       offset, rsize);
		} else {
			non_zc = 1;
			req = FUNC5(clnt, P9_TREAD, "dqd", fid->fid, offset,
					    rsize);
		}
		if (FUNC0(req)) {
			*err = FUNC1(req);
			break;
		}

		*err = FUNC9(&req->rc, clnt->proto_version,
				   "D", &count, &dataptr);
		if (*err) {
			FUNC11(clnt, &req->rc);
			FUNC8(clnt, req);
			break;
		}
		if (rsize < count) {
			FUNC10("bogus RREAD count (%d > %d)\n", count, rsize);
			count = rsize;
		}

		FUNC7(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
		if (!count) {
			FUNC8(clnt, req);
			break;
		}

		if (non_zc) {
			int n = FUNC2(dataptr, count, to);
			total += n;
			offset += n;
			if (n != count) {
				*err = -EFAULT;
				FUNC8(clnt, req);
				break;
			}
		} else {
			FUNC3(to, count);
			total += count;
			offset += count;
		}
		FUNC8(clnt, req);
	}
	return total;
}