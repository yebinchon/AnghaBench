#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; int /*<<< orphan*/  pgn; } ;
struct TYPE_5__ {TYPE_1__ j1939; } ;
struct sockaddr_can {scalar_t__ can_ifindex; TYPE_2__ can_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sa; int /*<<< orphan*/  src_name; } ;
struct j1939_sock {int state; scalar_t__ ifindex; TYPE_3__ addr; int /*<<< orphan*/  pgn_rx_filter; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct j1939_priv*) ; 
 int J1939_SOCK_BOUND ; 
 int FUNC1 (struct j1939_priv*) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_priv*,struct j1939_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct j1939_priv*,struct j1939_sock*) ; 
 int FUNC6 (struct j1939_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct j1939_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct j1939_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct j1939_priv*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct j1939_sock* FUNC11 (struct sock*) ; 
 int FUNC12 (struct sockaddr_can*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 struct net* FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct socket *sock, struct sockaddr *uaddr, int len)
{
	struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
	struct j1939_sock *jsk = FUNC11(sock->sk);
	struct j1939_priv *priv = jsk->priv;
	struct sock *sk = sock->sk;
	struct net *net = FUNC15(sk);
	int ret = 0;

	ret = FUNC12(addr, len);
	if (ret)
		return ret;

	FUNC13(sock->sk);

	/* Already bound to an interface? */
	if (jsk->state & J1939_SOCK_BOUND) {
		/* A re-bind() to a different interface is not
		 * supported.
		 */
		if (jsk->ifindex != addr->can_ifindex) {
			ret = -EINVAL;
			goto out_release_sock;
		}

		/* drop old references */
		FUNC5(priv, jsk);
		FUNC7(priv, jsk->addr.src_name, jsk->addr.sa);
	} else {
		struct net_device *ndev;

		ndev = FUNC2(net, addr->can_ifindex);
		if (!ndev) {
			ret = -ENODEV;
			goto out_release_sock;
		}

		if (ndev->type != ARPHRD_CAN) {
			FUNC3(ndev);
			ret = -ENODEV;
			goto out_release_sock;
		}

		priv = FUNC8(ndev);
		FUNC3(ndev);
		if (FUNC0(priv)) {
			ret = FUNC1(priv);
			goto out_release_sock;
		}

		jsk->ifindex = addr->can_ifindex;
	}

	/* set default transmit pgn */
	if (FUNC10(addr->can_addr.j1939.pgn))
		jsk->pgn_rx_filter = addr->can_addr.j1939.pgn;
	jsk->addr.src_name = addr->can_addr.j1939.name;
	jsk->addr.sa = addr->can_addr.j1939.addr;

	/* get new references */
	ret = FUNC6(priv, jsk->addr.src_name, jsk->addr.sa);
	if (ret) {
		FUNC9(priv);
		goto out_release_sock;
	}

	FUNC4(priv, jsk);

 out_release_sock: /* fall through */
	FUNC14(sock->sk);

	return ret;
}