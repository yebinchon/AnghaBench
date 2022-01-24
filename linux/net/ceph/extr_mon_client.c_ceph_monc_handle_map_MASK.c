#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_monmap {int /*<<< orphan*/  epoch; int /*<<< orphan*/  fsid; } ;
struct ceph_mon_client {int /*<<< orphan*/  mutex; struct ceph_monmap* monmap; struct ceph_client* client; } ;
struct TYPE_4__ {struct ceph_monmap* monmap; } ;
struct ceph_client {int have_fsid; int /*<<< orphan*/  auth_wq; TYPE_2__ monc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_SUB_MONMAP ; 
 scalar_t__ FUNC0 (struct ceph_monmap*) ; 
 scalar_t__ FUNC1 (struct ceph_monmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mon_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ceph_client*,int /*<<< orphan*/ *) ; 
 struct ceph_monmap* FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_monmap*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ceph_mon_client *monc,
				 struct ceph_msg *msg)
{
	struct ceph_client *client = monc->client;
	struct ceph_monmap *monmap = NULL, *old = monc->monmap;
	void *p, *end;

	FUNC8(&monc->mutex);

	FUNC6("handle_monmap\n");
	p = msg->front.iov_base;
	end = p + msg->front.iov_len;

	monmap = FUNC4(p, end);
	if (FUNC0(monmap)) {
		FUNC10("problem decoding monmap, %d\n",
		       (int)FUNC1(monmap));
		FUNC5(msg);
		goto out;
	}

	if (FUNC3(monc->client, &monmap->fsid) < 0) {
		FUNC7(monmap);
		goto out;
	}

	client->monc.monmap = monmap;
	FUNC7(old);

	FUNC2(monc, CEPH_SUB_MONMAP, monc->monmap->epoch);
	client->have_fsid = true;

out:
	FUNC9(&monc->mutex);
	FUNC11(&client->auth_wq);
}