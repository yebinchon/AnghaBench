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
struct TYPE_4__ {scalar_t__ size; } ;
struct p9_req_t {TYPE_1__ rc; } ;
struct p9_client {scalar_t__ msize; int /*<<< orphan*/  proto_version; } ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 scalar_t__ P9_RERROR ; 
 scalar_t__ P9_RLERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_client*) ; 
 scalar_t__ FUNC4 (struct p9_client*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct p9_client *c, struct p9_req_t *req)
{
	int8_t type;
	int err;
	int ecode;

	err = FUNC5(&req->rc, NULL, &type, NULL, 0);
	if (req->rc.size >= c->msize) {
		FUNC1(P9_DEBUG_ERROR,
			 "requested packet size too big: %d\n",
			 req->rc.size);
		return -EIO;
	}
	/*
	 * dump the response from server
	 * This should be after check errors which poplulate pdu_fcall.
	 */
	FUNC8(c, &req->rc);
	if (err) {
		FUNC1(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
		return err;
	}
	if (type != P9_RERROR && type != P9_RLERROR)
		return 0;

	if (!FUNC3(c)) {
		char *ename;
		err = FUNC6(&req->rc, c->proto_version, "s?d",
				  &ename, &ecode);
		if (err)
			goto out_err;

		if (FUNC4(c) && ecode < 512)
			err = -ecode;

		if (!err) {
			err = FUNC2(ename, FUNC7(ename));

			FUNC1(P9_DEBUG_9P, "<<< RERROR (%d) %s\n",
				 -ecode, ename);
		}
		FUNC0(ename);
	} else {
		err = FUNC6(&req->rc, c->proto_version, "d", &ecode);
		err = -ecode;

		FUNC1(P9_DEBUG_9P, "<<< RLERROR (%d)\n", -ecode);
	}

	return err;

out_err:
	FUNC1(P9_DEBUG_ERROR, "couldn't parse error%d\n", err);

	return err;
}