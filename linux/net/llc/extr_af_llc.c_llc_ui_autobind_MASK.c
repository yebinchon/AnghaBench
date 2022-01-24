#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_llc {scalar_t__ sllc_arphrd; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct TYPE_5__ {int /*<<< orphan*/ * mac; int /*<<< orphan*/  lsap; } ;
struct llc_sock {int /*<<< orphan*/  addr; TYPE_2__* dev; TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; struct sockaddr_llc* dev_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int EUSERS ; 
 int IFHWADDRLEN ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct llc_sap*,struct sock*) ; 
 struct llc_sap* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct llc_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr_llc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct sockaddr_llc *addr)
{
	struct sock *sk = sock->sk;
	struct llc_sock *llc = FUNC5(sk);
	struct llc_sap *sap;
	int rc = -EINVAL;

	if (!FUNC8(sk, SOCK_ZAPPED))
		goto out;
	rc = -ENODEV;
	if (sk->sk_bound_dev_if) {
		llc->dev = FUNC0(&init_net, sk->sk_bound_dev_if);
		if (llc->dev && addr->sllc_arphrd != llc->dev->type) {
			FUNC2(llc->dev);
			llc->dev = NULL;
		}
	} else
		llc->dev = FUNC1(&init_net, addr->sllc_arphrd);
	if (!llc->dev)
		goto out;
	rc = -EUSERS;
	llc->laddr.lsap = FUNC6();
	if (!llc->laddr.lsap)
		goto out;
	rc = -EBUSY; /* some other network layer is using the sap */
	sap = FUNC4(llc->laddr.lsap, NULL);
	if (!sap)
		goto out;
	FUNC7(llc->laddr.mac, llc->dev->dev_addr, IFHWADDRLEN);
	FUNC7(&llc->addr, addr, sizeof(llc->addr));
	/* assign new connection to its SAP */
	FUNC3(sap, sk);
	FUNC9(sk, SOCK_ZAPPED);
	rc = 0;
out:
	return rc;
}