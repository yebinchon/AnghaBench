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
struct TYPE_4__ {int /*<<< orphan*/  o_osd; struct ceph_osd_client* o_osdc; } ;
struct ceph_osd_client {int /*<<< orphan*/  osdmap; int /*<<< orphan*/  req_mempool; int /*<<< orphan*/  msgpool_op; int /*<<< orphan*/  msgpool_op_reply; void* notify_wq; struct ceph_client* client; int /*<<< orphan*/  osds_timeout_work; int /*<<< orphan*/  timeout_work; void* completion_wq; void* linger_map_checks; void* map_checks; void* linger_requests; int /*<<< orphan*/  last_linger_id; TYPE_2__ homeless_osd; int /*<<< orphan*/  osd_lru_lock; int /*<<< orphan*/  osd_lru; void* osds; int /*<<< orphan*/  lock; } ;
struct ceph_client {TYPE_1__* options; } ;
struct TYPE_3__ {int /*<<< orphan*/  osd_idle_ttl; int /*<<< orphan*/  osd_keepalive_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_HOMELESS_OSD ; 
 int /*<<< orphan*/  CEPH_LINGER_ID_START ; 
 int /*<<< orphan*/  CEPH_MSG_OSD_OP ; 
 int /*<<< orphan*/  CEPH_MSG_OSD_OPREPLY ; 
 int /*<<< orphan*/  CEPH_OSD_SLAB_OPS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  ceph_osd_request_cache ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  handle_osds_timeout ; 
 int /*<<< orphan*/  handle_timeout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct ceph_osd_client *osdc, struct ceph_client *client)
{
	int err;

	FUNC8("init\n");
	osdc->client = client;
	FUNC9(&osdc->lock);
	osdc->osds = RB_ROOT;
	FUNC1(&osdc->osd_lru);
	FUNC15(&osdc->osd_lru_lock);
	FUNC12(&osdc->homeless_osd);
	osdc->homeless_osd.o_osdc = osdc;
	osdc->homeless_osd.o_osd = CEPH_HOMELESS_OSD;
	osdc->last_linger_id = CEPH_LINGER_ID_START;
	osdc->linger_requests = RB_ROOT;
	osdc->map_checks = RB_ROOT;
	osdc->linger_map_checks = RB_ROOT;
	FUNC0(&osdc->timeout_work, handle_timeout);
	FUNC0(&osdc->osds_timeout_work, handle_osds_timeout);

	err = -ENOMEM;
	osdc->osdmap = FUNC4();
	if (!osdc->osdmap)
		goto out;

	osdc->req_mempool = FUNC10(10,
						     ceph_osd_request_cache);
	if (!osdc->req_mempool)
		goto out_map;

	err = FUNC3(&osdc->msgpool_op, CEPH_MSG_OSD_OP,
				PAGE_SIZE, CEPH_OSD_SLAB_OPS, 10, "osd_op");
	if (err < 0)
		goto out_mempool;
	err = FUNC3(&osdc->msgpool_op_reply, CEPH_MSG_OSD_OPREPLY,
				PAGE_SIZE, CEPH_OSD_SLAB_OPS, 10,
				"osd_op_reply");
	if (err < 0)
		goto out_msgpool;

	err = -ENOMEM;
	osdc->notify_wq = FUNC6("ceph-watch-notify");
	if (!osdc->notify_wq)
		goto out_msgpool_reply;

	osdc->completion_wq = FUNC6("ceph-completion");
	if (!osdc->completion_wq)
		goto out_notify_wq;

	FUNC14(&osdc->timeout_work,
			      osdc->client->options->osd_keepalive_timeout);
	FUNC14(&osdc->osds_timeout_work,
	    FUNC13(osdc->client->options->osd_idle_ttl));

	return 0;

out_notify_wq:
	FUNC7(osdc->notify_wq);
out_msgpool_reply:
	FUNC2(&osdc->msgpool_op_reply);
out_msgpool:
	FUNC2(&osdc->msgpool_op);
out_mempool:
	FUNC11(osdc->req_mempool);
out_map:
	FUNC5(osdc->osdmap);
out:
	return err;
}