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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_4__ {int /*<<< orphan*/  tag; } ;
struct p9_req_t {TYPE_1__ tc; } ;
struct p9_client {scalar_t__ status; int /*<<< orphan*/  proto_version; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 scalar_t__ BeginDisconnect ; 
 scalar_t__ Disconnected ; 
 int EIO ; 
 struct p9_req_t* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 int /*<<< orphan*/  P9_TCLUNK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct p9_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct p9_req_t *FUNC10(struct p9_client *c,
					      int8_t type, int req_size,
					      const char *fmt, va_list ap)
{
	int err;
	struct p9_req_t *req;

	FUNC2(P9_DEBUG_MUX, "client %p op %d\n", c, type);

	/* we allow for any status other than disconnected */
	if (c->status == Disconnected)
		return FUNC0(-EIO);

	/* if status is begin_disconnected we allow only clunk request */
	if ((c->status == BeginDisconnect) && (type != P9_TCLUNK))
		return FUNC0(-EIO);

	req = FUNC4(c, type, req_size);
	if (FUNC1(req))
		return req;

	/* marshall the data */
	FUNC7(&req->tc, req->tc.tag, type);
	err = FUNC8(&req->tc, c->proto_version, fmt, ap);
	if (err)
		goto reterr;
	FUNC6(c, &req->tc);
	FUNC9(c, type, req->tc.tag);
	return req;
reterr:
	FUNC5(c, req);
	/* We have to put also the 2nd reference as it won't be used */
	FUNC3(req);
	return FUNC0(err);
}