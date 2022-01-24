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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_l2tpip {int /*<<< orphan*/  l2tp_conn_id; TYPE_1__ l2tp_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_bind_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  peer_conn_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int FUNC0 (struct sock*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tp_ip_bind_table ; 
 int /*<<< orphan*/  l2tp_ip_lock ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_l2tpip *lsa = (struct sockaddr_l2tpip *) uaddr;
	int rc;

	if (addr_len < sizeof(*lsa))
		return -EINVAL;

	if (FUNC2(lsa->l2tp_addr.s_addr))
		return -EINVAL;

	FUNC4(sk);

	/* Must bind first - autobinding does not work */
	if (FUNC7(sk, SOCK_ZAPPED)) {
		rc = -EINVAL;
		goto out_sk;
	}

	rc = FUNC0(sk, uaddr, addr_len);
	if (rc < 0)
		goto out_sk;

	FUNC3(sk)->peer_conn_id = lsa->l2tp_conn_id;

	FUNC8(&l2tp_ip_lock);
	FUNC1(&sk->sk_bind_node);
	FUNC6(sk, &l2tp_ip_bind_table);
	FUNC9(&l2tp_ip_lock);

out_sk:
	FUNC5(sk);

	return rc;
}