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
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_client {int msize; int proto_version; } ;

/* Variables and functions */
 int EINVAL ; 
 int EREMOTEIO ; 
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  P9_TVERSION ; 
 int FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct p9_req_t* FUNC3 (struct p9_client*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
#define  p9_proto_2000L 130 
#define  p9_proto_2000u 129 
#define  p9_proto_legacy 128 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,char*,int*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct p9_client *c)
{
	int err = 0;
	struct p9_req_t *req;
	char *version = NULL;
	int msize;

	FUNC4(P9_DEBUG_9P, ">>> TVERSION msize %d protocol %d\n",
		 c->msize, c->proto_version);

	switch (c->proto_version) {
	case p9_proto_2000L:
		req = FUNC3(c, P9_TVERSION, "ds",
					c->msize, "9P2000.L");
		break;
	case p9_proto_2000u:
		req = FUNC3(c, P9_TVERSION, "ds",
					c->msize, "9P2000.u");
		break;
	case p9_proto_legacy:
		req = FUNC3(c, P9_TVERSION, "ds",
					c->msize, "9P2000");
		break;
	default:
		return -EINVAL;
	}

	if (FUNC0(req))
		return FUNC1(req);

	err = FUNC6(&req->rc, c->proto_version, "ds", &msize, &version);
	if (err) {
		FUNC4(P9_DEBUG_9P, "version error %d\n", err);
		FUNC8(c, &req->rc);
		goto error;
	}

	FUNC4(P9_DEBUG_9P, "<<< RVERSION msize %d %s\n", msize, version);
	if (!FUNC7(version, "9P2000.L", 8))
		c->proto_version = p9_proto_2000L;
	else if (!FUNC7(version, "9P2000.u", 8))
		c->proto_version = p9_proto_2000u;
	else if (!FUNC7(version, "9P2000", 6))
		c->proto_version = p9_proto_legacy;
	else {
		FUNC4(P9_DEBUG_ERROR,
			 "server returned an unknown version: %s\n", version);
		err = -EREMOTEIO;
		goto error;
	}

	if (msize < 4096) {
		FUNC4(P9_DEBUG_ERROR,
			 "server returned a msize < 4096: %d\n", msize);
		err = -EREMOTEIO;
		goto error;
	}
	if (msize < c->msize)
		c->msize = msize;

error:
	FUNC2(version);
	FUNC5(c, req);

	return err;
}