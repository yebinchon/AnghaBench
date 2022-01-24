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
struct sock {long sk_lingertime; int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct smc_connection {int /*<<< orphan*/  tx_work; } ;
struct smc_sock {struct sock sk; struct smc_connection conn; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int PF_EXITING ; 
#define  SMC_ACTIVE 136 
#define  SMC_APPCLOSEWAIT1 135 
#define  SMC_APPCLOSEWAIT2 134 
#define  SMC_APPFINCLOSEWAIT 133 
 long SMC_MAX_STREAM_WAIT_TIMEOUT ; 
#define  SMC_PEERABORTWAIT 132 
#define  SMC_PEERCLOSEWAIT1 131 
#define  SMC_PEERCLOSEWAIT2 130 
#define  SMC_PEERFINCLOSEWAIT 129 
#define  SMC_PROCESSABORT 128 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_sock*,long) ; 
 int FUNC5 (struct smc_connection*) ; 
 scalar_t__ FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

int FUNC8(struct smc_sock *smc)
{
	struct smc_connection *conn = &smc->conn;
	struct sock *sk = &smc->sk;
	int old_state;
	long timeout;
	int rc = 0;

	timeout = current->flags & PF_EXITING ?
		  0 : FUNC6(sk, SOCK_LINGER) ?
		      sk->sk_lingertime : SMC_MAX_STREAM_WAIT_TIMEOUT;

	old_state = sk->sk_state;
again:
	switch (sk->sk_state) {
	case SMC_ACTIVE:
		FUNC4(smc, timeout);
		FUNC2(sk);
		FUNC0(&conn->tx_work);
		FUNC1(sk);
		if (sk->sk_state != SMC_ACTIVE)
			goto again;
		/* send close wr request */
		rc = FUNC5(conn);
		if (rc)
			break;
		sk->sk_state = SMC_PEERCLOSEWAIT1;
		break;
	case SMC_APPCLOSEWAIT1:
		/* passive close */
		if (!FUNC3(conn))
			FUNC4(smc, timeout);
		FUNC2(sk);
		FUNC0(&conn->tx_work);
		FUNC1(sk);
		if (sk->sk_state != SMC_APPCLOSEWAIT1)
			goto again;
		/* confirm close from peer */
		rc = FUNC5(conn);
		if (rc)
			break;
		sk->sk_state = SMC_APPCLOSEWAIT2;
		break;
	case SMC_APPCLOSEWAIT2:
	case SMC_PEERFINCLOSEWAIT:
	case SMC_PEERCLOSEWAIT1:
	case SMC_PEERCLOSEWAIT2:
	case SMC_APPFINCLOSEWAIT:
	case SMC_PROCESSABORT:
	case SMC_PEERABORTWAIT:
		/* nothing to do, add tracing in future patch */
		break;
	}

	if (old_state != sk->sk_state)
		sk->sk_state_change(sk);
	return rc;
}