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
typedef  scalar_t__ u64 ;
struct ceph_statfs {int dummy; } ;
struct TYPE_11__ {scalar_t__ session_mon_tid; void* session_mon; scalar_t__ have_version; } ;
struct ceph_mon_statfs {int contains_data_pool; int /*<<< orphan*/  data_pool; int /*<<< orphan*/  fsid; TYPE_5__ monhdr; } ;
struct TYPE_7__ {struct ceph_statfs* st; } ;
struct ceph_mon_generic_request {TYPE_4__* request; TYPE_1__ u; void* reply; } ;
struct ceph_mon_client {int /*<<< orphan*/  mutex; TYPE_6__* monmap; } ;
struct TYPE_12__ {int /*<<< orphan*/  fsid; } ;
struct TYPE_9__ {struct ceph_mon_statfs* iov_base; } ;
struct TYPE_8__ {void* version; } ;
struct TYPE_10__ {TYPE_3__ front; TYPE_2__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MSG_STATFS ; 
 int /*<<< orphan*/  CEPH_MSG_STATFS_REPLY ; 
 scalar_t__ CEPH_NOPOOL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct ceph_mon_generic_request* FUNC0 (struct ceph_mon_client*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mon_client*,struct ceph_mon_generic_request*) ; 
 int FUNC9 (struct ceph_mon_generic_request*) ; 

int FUNC10(struct ceph_mon_client *monc, u64 data_pool,
			struct ceph_statfs *buf)
{
	struct ceph_mon_generic_request *req;
	struct ceph_mon_statfs *h;
	int ret = -ENOMEM;

	req = FUNC0(monc, GFP_NOFS);
	if (!req)
		goto out;

	req->request = FUNC1(CEPH_MSG_STATFS, sizeof(*h), GFP_NOFS,
				    true);
	if (!req->request)
		goto out;

	req->reply = FUNC1(CEPH_MSG_STATFS_REPLY, 64, GFP_NOFS, true);
	if (!req->reply)
		goto out;

	req->u.st = buf;
	req->request->hdr.version = FUNC2(2);

	FUNC4(&monc->mutex);
	FUNC7(req);
	/* fill out request */
	h = req->request->front.iov_base;
	h->monhdr.have_version = 0;
	h->monhdr.session_mon = FUNC2(-1);
	h->monhdr.session_mon_tid = 0;
	h->fsid = monc->monmap->fsid;
	h->contains_data_pool = (data_pool != CEPH_NOPOOL);
	h->data_pool = FUNC3(data_pool);
	FUNC8(monc, req);
	FUNC5(&monc->mutex);

	ret = FUNC9(req);
out:
	FUNC6(req);
	return ret;
}