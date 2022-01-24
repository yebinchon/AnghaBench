#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; int offset; char* sdata; } ;
struct p9_req_t {TYPE_1__ rc; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;
struct iov_iter {int dummy; } ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 scalar_t__ P9_RERROR ; 
 scalar_t__ P9_RLERROR ; 
 int P9_ZC_HDR_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*) ; 
 scalar_t__ FUNC5 (struct p9_client*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_client*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct p9_client *c, struct p9_req_t *req,
			      struct iov_iter *uidata, int in_hdrlen)
{
	int err;
	int ecode;
	int8_t type;
	char *ename = NULL;

	err = FUNC6(&req->rc, NULL, &type, NULL, 0);
	/*
	 * dump the response from server
	 * This should be after parse_header which poplulate pdu_fcall.
	 */
	FUNC9(c, &req->rc);
	if (err) {
		FUNC2(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
		return err;
	}

	if (type != P9_RERROR && type != P9_RLERROR)
		return 0;

	if (!FUNC4(c)) {
		/* Error is reported in string format */
		int len;
		/* 7 = header size for RERROR; */
		int inline_len = in_hdrlen - 7;

		len = req->rc.size - req->rc.offset;
		if (len > (P9_ZC_HDR_SZ - 7)) {
			err = -EFAULT;
			goto out_err;
		}

		ename = &req->rc.sdata[req->rc.offset];
		if (len > inline_len) {
			/* We have error in external buffer */
			if (!FUNC0(ename + inline_len,
					     len - inline_len, uidata)) {
				err = -EFAULT;
				goto out_err;
			}
		}
		ename = NULL;
		err = FUNC7(&req->rc, c->proto_version, "s?d",
				  &ename, &ecode);
		if (err)
			goto out_err;

		if (FUNC5(c) && ecode < 512)
			err = -ecode;

		if (!err) {
			err = FUNC3(ename, FUNC8(ename));

			FUNC2(P9_DEBUG_9P, "<<< RERROR (%d) %s\n",
				 -ecode, ename);
		}
		FUNC1(ename);
	} else {
		err = FUNC7(&req->rc, c->proto_version, "d", &ecode);
		err = -ecode;

		FUNC2(P9_DEBUG_9P, "<<< RLERROR (%d)\n", -ecode);
	}
	return err;

out_err:
	FUNC2(P9_DEBUG_ERROR, "couldn't parse error%d\n", err);
	return err;
}