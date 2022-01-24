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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct o2net_status_wait {int ns_status; int /*<<< orphan*/  ns_sys_status; int /*<<< orphan*/  ns_wq; int /*<<< orphan*/  ns_id; int /*<<< orphan*/  ns_node_item; } ;
struct o2net_sock_container {int /*<<< orphan*/  sc_send_lock; int /*<<< orphan*/  sc_sock; } ;
struct o2net_send_tracking {int dummy; } ;
struct o2net_node {int /*<<< orphan*/  nn_sc_wq; } ;
struct o2net_msg {int iov_len; int /*<<< orphan*/  msg_num; struct o2net_msg* iov_base; } ;
struct kvec {int iov_len; int /*<<< orphan*/  msg_num; struct kvec* iov_base; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELOOP ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t O2NET_MAX_PAYLOAD_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 size_t FUNC2 (struct iovec*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct o2net_msg*) ; 
 struct o2net_msg* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct o2net_msg* FUNC5 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct o2net_msg*,struct o2net_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct o2net_msg*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct o2net_node*,struct o2net_status_wait*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct o2net_send_tracking*) ; 
 int /*<<< orphan*/  FUNC13 (struct o2net_send_tracking*) ; 
 int /*<<< orphan*/  FUNC14 (struct o2net_msg*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct o2net_send_tracking*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct o2net_node* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct o2net_node*,struct o2net_status_wait*) ; 
 int FUNC18 (struct o2net_node*,struct o2net_status_wait*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct o2net_msg*,size_t,int) ; 
 int /*<<< orphan*/  FUNC20 (struct o2net_send_tracking*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct o2net_send_tracking*) ; 
 int /*<<< orphan*/  FUNC22 (struct o2net_send_tracking*,struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC23 (struct o2net_send_tracking*) ; 
 int /*<<< orphan*/  FUNC24 (struct o2net_send_tracking*) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct o2net_node*,struct o2net_sock_container**,int*) ; 
 int /*<<< orphan*/  FUNC27 (struct o2net_send_tracking*,struct o2net_sock_container*) ; 
 int /*<<< orphan*/ * o2net_wq ; 
 scalar_t__ FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC31(u32 msg_type, u32 key, struct kvec *caller_vec,
			   size_t caller_veclen, u8 target_node, int *status)
{
	int ret = 0;
	struct o2net_msg *msg = NULL;
	size_t veclen, caller_bytes = 0;
	struct kvec *vec = NULL;
	struct o2net_sock_container *sc = NULL;
	struct o2net_node *nn = FUNC16(target_node);
	struct o2net_status_wait nsw = {
		.ns_node_item = FUNC0(nsw.ns_node_item),
	};
	struct o2net_send_tracking nst;

	FUNC15(&nst, msg_type, key, current, target_node);

	if (o2net_wq == NULL) {
		FUNC7(0, "attempt to tx without o2netd running\n");
		ret = -ESRCH;
		goto out;
	}

	if (caller_veclen == 0) {
		FUNC7(0, "bad kvec array length\n");
		ret = -EINVAL;
		goto out;
	}

	caller_bytes = FUNC2((struct iovec *)caller_vec, caller_veclen);
	if (caller_bytes > O2NET_MAX_PAYLOAD_BYTES) {
		FUNC7(0, "total payload len %zu too large\n", caller_bytes);
		ret = -EINVAL;
		goto out;
	}

	if (target_node == FUNC28()) {
		ret = -ELOOP;
		goto out;
	}

	FUNC12(&nst);

	FUNC23(&nst);

	FUNC30(nn->nn_sc_wq, FUNC26(nn, &sc, &ret));
	if (ret)
		goto out;

	FUNC22(&nst, sc);

	veclen = caller_veclen + 1;
	vec = FUNC5(veclen, sizeof(struct kvec), GFP_ATOMIC);
	if (vec == NULL) {
		FUNC7(0, "failed to %zu element kvec!\n", veclen);
		ret = -ENOMEM;
		goto out;
	}

	msg = FUNC4(sizeof(struct o2net_msg), GFP_ATOMIC);
	if (!msg) {
		FUNC7(0, "failed to allocate a o2net_msg!\n");
		ret = -ENOMEM;
		goto out;
	}

	FUNC14(msg, caller_bytes, msg_type, key);

	vec[0].iov_len = sizeof(struct o2net_msg);
	vec[0].iov_base = msg;
	FUNC6(&vec[1], caller_vec, caller_veclen * sizeof(struct kvec));

	ret = FUNC18(nn, &nsw);
	if (ret)
		goto out;

	msg->msg_num = FUNC1(nsw.ns_id);
	FUNC20(&nst, nsw.ns_id);

	FUNC21(&nst);

	/* finally, convert the message header to network byte-order
	 * and send */
	FUNC9(&sc->sc_send_lock);
	ret = FUNC19(sc->sc_sock, vec, veclen,
				 sizeof(struct o2net_msg) + caller_bytes);
	FUNC10(&sc->sc_send_lock);
	FUNC8(msg, "sending returned %d\n", ret);
	if (ret < 0) {
		FUNC7(0, "error returned from o2net_send_tcp_msg=%d\n", ret);
		goto out;
	}

	/* wait on other node's handler */
	FUNC24(&nst);
	FUNC30(nsw.ns_wq, FUNC17(nn, &nsw));

	FUNC27(&nst, sc);

	/* Note that we avoid overwriting the callers status return
	 * variable if a system error was reported on the other
	 * side. Callers beware. */
	ret = FUNC25(nsw.ns_sys_status);
	if (status && !ret)
		*status = nsw.ns_status;

	FUNC7(0, "woken, returning system status %d, user status %d\n",
	     ret, nsw.ns_status);
out:
	FUNC13(&nst); /* must be before dropping sc and node */
	if (sc)
		FUNC29(sc);
	FUNC3(vec);
	FUNC3(msg);
	FUNC11(nn, &nsw, 0, 0, 0);
	return ret;
}