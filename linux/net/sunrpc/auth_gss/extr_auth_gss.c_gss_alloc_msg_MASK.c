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
struct gss_upcall_msg {int /*<<< orphan*/  service_name; struct gss_auth* auth; int /*<<< orphan*/  uid; int /*<<< orphan*/  count; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  rpc_waitqueue; int /*<<< orphan*/  list; int /*<<< orphan*/  pipe; } ;
struct gss_auth {int /*<<< orphan*/  net; int /*<<< orphan*/  kref; TYPE_1__** gss_pipe; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct gss_upcall_msg* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gss_upcall_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 struct gss_upcall_msg* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct gss_upcall_msg *
FUNC11(struct gss_auth *gss_auth,
		kuid_t uid, const char *service_name)
{
	struct gss_upcall_msg *gss_msg;
	int vers;
	int err = -ENOMEM;

	gss_msg = FUNC7(sizeof(*gss_msg), GFP_NOFS);
	if (gss_msg == NULL)
		goto err;
	vers = FUNC2(gss_auth->net);
	err = vers;
	if (err < 0)
		goto err_free_msg;
	gss_msg->pipe = gss_auth->gss_pipe[vers]->pipe;
	FUNC1(&gss_msg->list);
	FUNC10(&gss_msg->rpc_waitqueue, "RPCSEC_GSS upcall waitq");
	FUNC3(&gss_msg->waitqueue);
	FUNC9(&gss_msg->count, 1);
	gss_msg->uid = uid;
	gss_msg->auth = gss_auth;
	FUNC5(&gss_auth->kref);
	if (service_name) {
		gss_msg->service_name = FUNC6(service_name, GFP_NOFS);
		if (!gss_msg->service_name) {
			err = -ENOMEM;
			goto err_put_pipe_version;
		}
	}
	return gss_msg;
err_put_pipe_version:
	FUNC8(gss_auth->net);
err_free_msg:
	FUNC4(gss_msg);
err:
	return FUNC0(err);
}