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
typedef  int /*<<< orphan*/  u16 ;
struct socket {int /*<<< orphan*/  sk; } ;
struct sockaddr_rxrpc {int /*<<< orphan*/  srx_service; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int /*<<< orphan*/  second_service; struct sockaddr_rxrpc srx; struct rxrpc_local* local; } ;
struct rxrpc_local {int /*<<< orphan*/  services_lock; int /*<<< orphan*/  service; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rxrpc_local*) ; 
 int FUNC1 (struct rxrpc_local*) ; 
 int RXRPC_CLIENT_BOUND ; 
#define  RXRPC_SERVER_BOUND 129 
 int RXRPC_SERVER_BOUND2 ; 
#define  RXRPC_UNBOUND 128 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_sock*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_rxrpc*,struct sockaddr_rxrpc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rxrpc_sock*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 struct rxrpc_local* FUNC9 (int /*<<< orphan*/ ,struct sockaddr_rxrpc*) ; 
 struct rxrpc_sock* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rxrpc_local*) ; 
 int FUNC12 (struct rxrpc_sock*,struct sockaddr_rxrpc*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct socket *sock, struct sockaddr *saddr, int len)
{
	struct sockaddr_rxrpc *srx = (struct sockaddr_rxrpc *)saddr;
	struct rxrpc_local *local;
	struct rxrpc_sock *rx = FUNC10(sock->sk);
	u16 service_id;
	int ret;

	FUNC2("%p,%p,%d", rx, saddr, len);

	ret = FUNC12(rx, srx, len);
	if (ret < 0)
		goto error;
	service_id = srx->srx_service;

	FUNC4(&rx->sk);

	switch (rx->sk.sk_state) {
	case RXRPC_UNBOUND:
		rx->srx = *srx;
		local = FUNC9(FUNC13(&rx->sk), &rx->srx);
		if (FUNC0(local)) {
			ret = FUNC1(local);
			goto error_unlock;
		}

		if (service_id) {
			FUNC14(&local->services_lock);
			if (FUNC6(local->service))
				goto service_in_use;
			rx->local = local;
			FUNC7(local->service, rx);
			FUNC15(&local->services_lock);

			rx->sk.sk_state = RXRPC_SERVER_BOUND;
		} else {
			rx->local = local;
			rx->sk.sk_state = RXRPC_CLIENT_BOUND;
		}
		break;

	case RXRPC_SERVER_BOUND:
		ret = -EINVAL;
		if (service_id == 0)
			goto error_unlock;
		ret = -EADDRINUSE;
		if (service_id == rx->srx.srx_service)
			goto error_unlock;
		ret = -EINVAL;
		srx->srx_service = rx->srx.srx_service;
		if (FUNC5(srx, &rx->srx, sizeof(*srx)) != 0)
			goto error_unlock;
		rx->second_service = service_id;
		rx->sk.sk_state = RXRPC_SERVER_BOUND2;
		break;

	default:
		ret = -EINVAL;
		goto error_unlock;
	}

	FUNC8(&rx->sk);
	FUNC3(" = 0");
	return 0;

service_in_use:
	FUNC15(&local->services_lock);
	FUNC11(local);
	ret = -EADDRINUSE;
error_unlock:
	FUNC8(&rx->sk);
error:
	FUNC3(" = %d", ret);
	return ret;
}