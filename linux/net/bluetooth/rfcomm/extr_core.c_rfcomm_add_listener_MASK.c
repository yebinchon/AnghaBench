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
struct socket {struct sock* sk; } ;
struct sockaddr_l2 {int /*<<< orphan*/  l2_bdaddr_type; scalar_t__ l2_cid; int /*<<< orphan*/  l2_psm; int /*<<< orphan*/  l2_family; int /*<<< orphan*/  l2_bdaddr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rfcomm_session {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  imtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  L2CAP_PSM_RFCOMM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct socket*,struct sockaddr*,int) ; 
 int FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  l2cap_mtu ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (struct socket**) ; 
 struct rfcomm_session* FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 

__attribute__((used)) static int FUNC11(bdaddr_t *ba)
{
	struct sockaddr_l2 addr;
	struct socket *sock;
	struct sock *sk;
	struct rfcomm_session *s;
	int    err = 0;

	/* Create socket */
	err = FUNC8(&sock);
	if (err < 0) {
		FUNC0("Create socket failed %d", err);
		return err;
	}

	/* Bind socket */
	FUNC1(&addr.l2_bdaddr, ba);
	addr.l2_family = AF_BLUETOOTH;
	addr.l2_psm    = FUNC2(L2CAP_PSM_RFCOMM);
	addr.l2_cid    = 0;
	addr.l2_bdaddr_type = BDADDR_BREDR;
	err = FUNC3(sock, (struct sockaddr *) &addr, sizeof(addr));
	if (err < 0) {
		FUNC0("Bind failed %d", err);
		goto failed;
	}

	/* Set L2CAP options */
	sk = sock->sk;
	FUNC6(sk);
	FUNC5(sk)->chan->imtu = l2cap_mtu;
	FUNC7(sk);

	/* Start listening on the socket */
	err = FUNC4(sock, 10);
	if (err) {
		FUNC0("Listen failed %d", err);
		goto failed;
	}

	/* Add listening session */
	s = FUNC9(sock, BT_LISTEN);
	if (!s) {
		err = -ENOMEM;
		goto failed;
	}

	return 0;
failed:
	FUNC10(sock);
	return err;
}