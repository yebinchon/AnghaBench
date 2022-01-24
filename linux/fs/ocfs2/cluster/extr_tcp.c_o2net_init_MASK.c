#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct o2net_node {int /*<<< orphan*/  nn_status_list; int /*<<< orphan*/  nn_status_idr; int /*<<< orphan*/  nn_sc_wq; int /*<<< orphan*/  nn_persistent_error; int /*<<< orphan*/  nn_still_up; int /*<<< orphan*/  nn_connect_expired; int /*<<< orphan*/  nn_connect_work; int /*<<< orphan*/  nn_lock; int /*<<< orphan*/  nn_timeout; } ;
struct o2net_msg {int dummy; } ;
struct o2net_handshake {int dummy; } ;
struct TYPE_6__ {void* magic; void* connector_id; void* protocol_version; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O2NET_MSG_KEEP_REQ_MAGIC ; 
 int /*<<< orphan*/  O2NET_MSG_KEEP_RESP_MAGIC ; 
 int O2NET_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2net_connect_expired ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__* o2net_hand ; 
 TYPE_1__* o2net_keep_req ; 
 TYPE_1__* o2net_keep_resp ; 
 struct o2net_node* FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  o2net_nodes ; 
 int /*<<< orphan*/  o2net_start_connect ; 
 int /*<<< orphan*/  o2net_still_up ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(void)
{
	unsigned long i;

	FUNC14();

	FUNC11();

	o2net_hand = FUNC9(sizeof(struct o2net_handshake), GFP_KERNEL);
	o2net_keep_req = FUNC9(sizeof(struct o2net_msg), GFP_KERNEL);
	o2net_keep_resp = FUNC9(sizeof(struct o2net_msg), GFP_KERNEL);
	if (!o2net_hand || !o2net_keep_req || !o2net_keep_resp)
		goto out;

	o2net_hand->protocol_version = FUNC5(O2NET_PROTOCOL_VERSION);
	o2net_hand->connector_id = FUNC5(1);

	o2net_keep_req->magic = FUNC4(O2NET_MSG_KEEP_REQ_MAGIC);
	o2net_keep_resp->magic = FUNC4(O2NET_MSG_KEEP_RESP_MAGIC);

	for (i = 0; i < FUNC0(o2net_nodes); i++) {
		struct o2net_node *nn = FUNC12(i);

		FUNC3(&nn->nn_timeout, 0);
		FUNC15(&nn->nn_lock);
		FUNC1(&nn->nn_connect_work, o2net_start_connect);
		FUNC1(&nn->nn_connect_expired,
				  o2net_connect_expired);
		FUNC1(&nn->nn_still_up, o2net_still_up);
		/* until we see hb from a node we'll return einval */
		nn->nn_persistent_error = -ENOTCONN;
		FUNC7(&nn->nn_sc_wq);
		FUNC6(&nn->nn_status_idr);
		FUNC2(&nn->nn_status_list);
	}

	return 0;

out:
	FUNC8(o2net_hand);
	FUNC8(o2net_keep_req);
	FUNC8(o2net_keep_resp);
	FUNC10();
	FUNC13();
	return -ENOMEM;
}