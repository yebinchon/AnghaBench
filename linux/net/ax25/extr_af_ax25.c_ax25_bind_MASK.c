#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_ax25 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_9__ {scalar_t__ sax25_family; int sax25_ndigis; int /*<<< orphan*/  sax25_call; } ;
struct full_sockaddr_ax25 {TYPE_1__ fsa_ax25; int /*<<< orphan*/ * fsa_digipeater; } ;
struct TYPE_10__ {int /*<<< orphan*/  call; } ;
typedef  TYPE_2__ ax25_uid_assoc ;
typedef  int /*<<< orphan*/  ax25_dev ;
struct TYPE_11__ {int /*<<< orphan*/ * ax25_dev; int /*<<< orphan*/  source_addr; } ;
typedef  TYPE_3__ ax25_cb ;
typedef  int /*<<< orphan*/  ax25_address ;

/* Variables and functions */
 scalar_t__ AF_AX25 ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EACCES ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ax25_uid_policy ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  null_ax25_address ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 TYPE_3__* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sock *sk = sock->sk;
	struct full_sockaddr_ax25 *addr = (struct full_sockaddr_ax25 *)uaddr;
	ax25_dev *ax25_dev = NULL;
	ax25_uid_assoc *user;
	ax25_address call;
	ax25_cb *ax25;
	int err = 0;

	if (addr_len != sizeof(struct sockaddr_ax25) &&
	    addr_len != sizeof(struct full_sockaddr_ax25))
		/* support for old structure may go away some time
		 * ax25_bind(): uses old (6 digipeater) socket structure.
		 */
		if ((addr_len < sizeof(struct sockaddr_ax25) + sizeof(ax25_address) * 6) ||
		    (addr_len > sizeof(struct full_sockaddr_ax25)))
			return -EINVAL;

	if (addr->fsa_ax25.sax25_family != AF_AX25)
		return -EINVAL;

	user = FUNC3(FUNC7());
	if (user) {
		call = user->call;
		FUNC4(user);
	} else {
		if (ax25_uid_policy && !FUNC6(CAP_NET_ADMIN))
			return -EACCES;

		call = addr->fsa_ax25.sax25_call;
	}

	FUNC8(sk);

	ax25 = FUNC10(sk);
	if (!FUNC11(sk, SOCK_ZAPPED)) {
		err = -EINVAL;
		goto out;
	}

	ax25->source_addr = call;

	/*
	 * User already set interface with SO_BINDTODEVICE
	 */
	if (ax25->ax25_dev != NULL)
		goto done;

	if (addr_len > sizeof(struct sockaddr_ax25) && addr->fsa_ax25.sax25_ndigis == 1) {
		if (FUNC5(&addr->fsa_digipeater[0], &null_ax25_address) != 0 &&
		    (ax25_dev = FUNC0(&addr->fsa_digipeater[0])) == NULL) {
			err = -EADDRNOTAVAIL;
			goto out;
		}
	} else {
		if ((ax25_dev = FUNC0(&addr->fsa_ax25.sax25_call)) == NULL) {
			err = -EADDRNOTAVAIL;
			goto out;
		}
	}

	if (ax25_dev != NULL)
		FUNC2(ax25, ax25_dev);

done:
	FUNC1(ax25);
	FUNC12(sk, SOCK_ZAPPED);

out:
	FUNC9(sk);

	return err;
}