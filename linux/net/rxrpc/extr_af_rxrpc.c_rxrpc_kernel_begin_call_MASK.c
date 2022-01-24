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
struct socket {int /*<<< orphan*/  sk; } ;
struct sockaddr_rxrpc {int /*<<< orphan*/  srx_service; } ;
struct rxrpc_sock {int /*<<< orphan*/  min_sec_level; int /*<<< orphan*/  local; struct key* key; int /*<<< orphan*/  sk; } ;
struct rxrpc_conn_parameters {unsigned long user_call_ID; int intr; int exclusive; int upgrade; int /*<<< orphan*/  peer; int /*<<< orphan*/  service_id; int /*<<< orphan*/  security_level; struct key* key; int /*<<< orphan*/  local; int /*<<< orphan*/  tx_total_len; } ;
struct rxrpc_call_params {unsigned long user_call_ID; int intr; int exclusive; int upgrade; int /*<<< orphan*/  peer; int /*<<< orphan*/  service_id; int /*<<< orphan*/  security_level; struct key* key; int /*<<< orphan*/  local; int /*<<< orphan*/  tx_total_len; } ;
struct rxrpc_call {int /*<<< orphan*/  user_mutex; int /*<<< orphan*/  notify_rx; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct key {TYPE_1__ payload; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  rxrpc_notify_rx_t ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 struct rxrpc_call* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_conn_parameters*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct rxrpc_call* FUNC8 (struct rxrpc_sock*,struct rxrpc_conn_parameters*,struct sockaddr_rxrpc*,struct rxrpc_conn_parameters*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct rxrpc_sock* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rxrpc_sock*,struct sockaddr_rxrpc*,int) ; 

struct rxrpc_call *FUNC12(struct socket *sock,
					   struct sockaddr_rxrpc *srx,
					   struct key *key,
					   unsigned long user_call_ID,
					   s64 tx_total_len,
					   gfp_t gfp,
					   rxrpc_notify_rx_t notify_rx,
					   bool upgrade,
					   bool intr,
					   unsigned int debug_id)
{
	struct rxrpc_conn_parameters cp;
	struct rxrpc_call_params p;
	struct rxrpc_call *call;
	struct rxrpc_sock *rx = FUNC10(sock->sk);
	int ret;

	FUNC2(",,%x,%lx", FUNC4(key), user_call_ID);

	ret = FUNC11(rx, srx, sizeof(*srx));
	if (ret < 0)
		return FUNC0(ret);

	FUNC5(&rx->sk);

	if (!key)
		key = rx->key;
	if (key && !key->payload.data[0])
		key = NULL; /* a no-security key */

	FUNC6(&p, 0, sizeof(p));
	p.user_call_ID = user_call_ID;
	p.tx_total_len = tx_total_len;
	p.intr = intr;

	FUNC6(&cp, 0, sizeof(cp));
	cp.local		= rx->local;
	cp.key			= key;
	cp.security_level	= rx->min_sec_level;
	cp.exclusive		= false;
	cp.upgrade		= upgrade;
	cp.service_id		= srx->srx_service;
	call = FUNC8(rx, &cp, srx, &p, gfp, debug_id);
	/* The socket has been unlocked. */
	if (!FUNC1(call)) {
		call->notify_rx = notify_rx;
		FUNC7(&call->user_mutex);
	}

	FUNC9(cp.peer);
	FUNC3(" = %p", call);
	return call;
}