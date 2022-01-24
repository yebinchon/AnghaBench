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
typedef  scalar_t__ u8 ;
struct dlm_master_request {scalar_t__ namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  node_idx; } ;
struct dlm_master_list_entry {scalar_t__ type; int master; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  maybe_map; int /*<<< orphan*/  response_map; int /*<<< orphan*/  mname; scalar_t__ mnamelen; struct dlm_ctxt* dlm; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DLM_MASTER_REQUEST_MSG ; 
#define  DLM_MASTER_RESP_ERROR 131 
#define  DLM_MASTER_RESP_MAYBE 130 
#define  DLM_MASTER_RESP_NO 129 
#define  DLM_MASTER_RESP_YES 128 
 scalar_t__ DLM_MLE_MIGRATION ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_master_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_master_request*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dlm_lock_resource *res,
				 struct dlm_master_list_entry *mle, int to)
{
	struct dlm_ctxt *dlm = mle->dlm;
	struct dlm_master_request request;
	int ret, response=0, resend;

	FUNC4(&request, 0, sizeof(request));
	request.node_idx = dlm->node_num;

	FUNC1(mle->type == DLM_MLE_MIGRATION);

	request.namelen = (u8)mle->mnamelen;
	FUNC3(request.name, mle->mname, request.namelen);

again:
	ret = FUNC8(DLM_MASTER_REQUEST_MSG, dlm->key, &request,
				 sizeof(request), to, &response);
	if (ret < 0)  {
		if (ret == -ESRCH) {
			/* should never happen */
			FUNC5(ML_ERROR, "TCP stack not ready!\n");
			FUNC0();
		} else if (ret == -EINVAL) {
			FUNC5(ML_ERROR, "bad args passed to o2net!\n");
			FUNC0();
		} else if (ret == -ENOMEM) {
			FUNC5(ML_ERROR, "out of memory while trying to send "
			     "network message!  retrying\n");
			/* this is totally crude */
			FUNC7(50);
			goto again;
		} else if (!FUNC2(ret)) {
			/* not a network error. bad. */
			FUNC6(ret);
			FUNC5(ML_ERROR, "unhandled error!");
			FUNC0();
		}
		/* all other errors should be network errors,
		 * and likely indicate node death */
		FUNC5(ML_ERROR, "link to %d went down!\n", to);
		goto out;
	}

	ret = 0;
	resend = 0;
	FUNC10(&mle->spinlock);
	switch (response) {
		case DLM_MASTER_RESP_YES:
			FUNC9(to, mle->response_map);
			FUNC5(0, "node %u is the master, response=YES\n", to);
			FUNC5(0, "%s:%.*s: master node %u now knows I have a "
			     "reference\n", dlm->name, res->lockname.len,
			     res->lockname.name, to);
			mle->master = to;
			break;
		case DLM_MASTER_RESP_NO:
			FUNC5(0, "node %u not master, response=NO\n", to);
			FUNC9(to, mle->response_map);
			break;
		case DLM_MASTER_RESP_MAYBE:
			FUNC5(0, "node %u not master, response=MAYBE\n", to);
			FUNC9(to, mle->response_map);
			FUNC9(to, mle->maybe_map);
			break;
		case DLM_MASTER_RESP_ERROR:
			FUNC5(0, "node %u hit an error, resending\n", to);
			resend = 1;
			response = 0;
			break;
		default:
			FUNC5(ML_ERROR, "bad response! %u\n", response);
			FUNC0();
	}
	FUNC11(&mle->spinlock);
	if (resend) {
		/* this is also totally crude */
		FUNC7(50);
		goto again;
	}

out:
	return ret;
}