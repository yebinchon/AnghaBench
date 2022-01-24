#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ceph_mon_generic_request {TYPE_2__* request; void* reply; } ;
struct TYPE_7__ {scalar_t__ session_mon_tid; int /*<<< orphan*/  session_mon; scalar_t__ have_version; } ;
struct ceph_mon_command {void* str_len; int /*<<< orphan*/  str; void* num_strs; int /*<<< orphan*/  fsid; TYPE_3__ monhdr; } ;
struct ceph_mon_client {int /*<<< orphan*/  client; int /*<<< orphan*/  mutex; TYPE_4__* monmap; } ;
struct ceph_entity_addr {int /*<<< orphan*/  nonce; int /*<<< orphan*/  in_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  fsid; } ;
struct TYPE_5__ {struct ceph_mon_command* iov_base; } ;
struct TYPE_6__ {TYPE_1__ front; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MSG_MON_COMMAND ; 
 int /*<<< orphan*/  CEPH_MSG_MON_COMMAND_ACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 struct ceph_mon_generic_request* FUNC0 (struct ceph_mon_client*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mon_client*,struct ceph_mon_generic_request*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (struct ceph_mon_generic_request*) ; 

int FUNC13(struct ceph_mon_client *monc,
			    struct ceph_entity_addr *client_addr)
{
	struct ceph_mon_generic_request *req;
	struct ceph_mon_command *h;
	int ret = -ENOMEM;
	int len;

	req = FUNC0(monc, GFP_NOIO);
	if (!req)
		goto out;

	req->request = FUNC1(CEPH_MSG_MON_COMMAND, 256, GFP_NOIO, true);
	if (!req->request)
		goto out;

	req->reply = FUNC1(CEPH_MSG_MON_COMMAND_ACK, 512, GFP_NOIO,
				  true);
	if (!req->reply)
		goto out;

	FUNC6(&monc->mutex);
	FUNC9(req);
	h = req->request->front.iov_base;
	h->monhdr.have_version = 0;
	h->monhdr.session_mon = FUNC3(-1);
	h->monhdr.session_mon_tid = 0;
	h->fsid = monc->monmap->fsid;
	h->num_strs = FUNC4(1);
	len = FUNC11(h->str, "{ \"prefix\": \"osd blacklist\", \
		                 \"blacklistop\": \"add\", \
				 \"addr\": \"%pISpc/%u\" }",
		      &client_addr->in_addr, FUNC5(client_addr->nonce));
	h->str_len = FUNC4(len);
	FUNC10(monc, req);
	FUNC7(&monc->mutex);

	ret = FUNC12(req);
	if (!ret)
		/*
		 * Make sure we have the osdmap that includes the blacklist
		 * entry.  This is needed to ensure that the OSDs pick up the
		 * new blacklist before processing any future requests from
		 * this client.
		 */
		ret = FUNC2(monc->client, 0);

out:
	FUNC8(req);
	return ret;
}