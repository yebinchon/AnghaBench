#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {long sk_lingertime; int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct smc_cdc_conn_state_flags {int /*<<< orphan*/  peer_done_writing; } ;
struct TYPE_5__ {struct smc_cdc_conn_state_flags conn_state_flags; } ;
struct smc_connection {int /*<<< orphan*/  tx_work; TYPE_1__ local_tx_ctrl; } ;
struct smc_sock {int /*<<< orphan*/  tcp_listen_work; TYPE_3__* clcsock; struct sock sk; struct smc_connection conn; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {TYPE_2__* sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* sk_data_ready ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int PF_EXITING ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
#define  SMC_ACTIVE 139 
#define  SMC_APPCLOSEWAIT1 138 
#define  SMC_APPCLOSEWAIT2 137 
#define  SMC_APPFINCLOSEWAIT 136 
#define  SMC_CLOSED 135 
#define  SMC_INIT 134 
#define  SMC_LISTEN 133 
 long SMC_MAX_STREAM_WAIT_TIMEOUT ; 
#define  SMC_PEERABORTWAIT 132 
#define  SMC_PEERCLOSEWAIT1 131 
#define  SMC_PEERCLOSEWAIT2 130 
#define  SMC_PEERFINCLOSEWAIT 129 
#define  SMC_PROCESSABORT 128 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct smc_sock*,long) ; 
 scalar_t__ FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

int FUNC16(struct smc_sock *smc)
{
	struct smc_cdc_conn_state_flags *txflags =
		&smc->conn.local_tx_ctrl.conn_state_flags;
	struct smc_connection *conn = &smc->conn;
	struct sock *sk = &smc->sk;
	int old_state;
	long timeout;
	int rc = 0;

	timeout = current->flags & PF_EXITING ?
		  0 : FUNC11(sk, SOCK_LINGER) ?
		      sk->sk_lingertime : SMC_MAX_STREAM_WAIT_TIMEOUT;

	old_state = sk->sk_state;
again:
	switch (sk->sk_state) {
	case SMC_INIT:
		sk->sk_state = SMC_CLOSED;
		break;
	case SMC_LISTEN:
		sk->sk_state = SMC_CLOSED;
		sk->sk_state_change(sk); /* wake up accept */
		if (smc->clcsock && smc->clcsock->sk) {
			rc = FUNC2(smc->clcsock, SHUT_RDWR);
			/* wake up kernel_accept of smc_tcp_listen_worker */
			smc->clcsock->sk->sk_data_ready(smc->clcsock->sk);
		}
		FUNC7(sk);
		FUNC4(sk);
		FUNC1(&smc->tcp_listen_work);
		FUNC3(sk);
		break;
	case SMC_ACTIVE:
		FUNC10(smc, timeout);
		FUNC4(sk);
		FUNC0(&conn->tx_work);
		FUNC3(sk);
		if (sk->sk_state == SMC_ACTIVE) {
			/* send close request */
			rc = FUNC8(conn);
			if (rc)
				break;
			sk->sk_state = SMC_PEERCLOSEWAIT1;
		} else {
			/* peer event has changed the state */
			goto again;
		}
		break;
	case SMC_APPFINCLOSEWAIT:
		/* socket already shutdown wr or both (active close) */
		if (txflags->peer_done_writing &&
		    !FUNC9(conn)) {
			/* just shutdown wr done, send close request */
			rc = FUNC8(conn);
			if (rc)
				break;
		}
		sk->sk_state = SMC_CLOSED;
		break;
	case SMC_APPCLOSEWAIT1:
	case SMC_APPCLOSEWAIT2:
		if (!FUNC5(conn))
			FUNC10(smc, timeout);
		FUNC4(sk);
		FUNC0(&conn->tx_work);
		FUNC3(sk);
		if (sk->sk_state != SMC_APPCLOSEWAIT1 &&
		    sk->sk_state != SMC_APPCLOSEWAIT2)
			goto again;
		/* confirm close from peer */
		rc = FUNC8(conn);
		if (rc)
			break;
		if (FUNC5(conn)) {
			/* peer has closed the socket already */
			sk->sk_state = SMC_CLOSED;
			FUNC12(sk); /* postponed passive closing */
		} else {
			/* peer has just issued a shutdown write */
			sk->sk_state = SMC_PEERFINCLOSEWAIT;
		}
		break;
	case SMC_PEERCLOSEWAIT1:
	case SMC_PEERCLOSEWAIT2:
		if (txflags->peer_done_writing &&
		    !FUNC9(conn)) {
			/* just shutdown wr done, send close request */
			rc = FUNC8(conn);
			if (rc)
				break;
		}
		/* peer sending PeerConnectionClosed will cause transition */
		break;
	case SMC_PEERFINCLOSEWAIT:
		/* peer sending PeerConnectionClosed will cause transition */
		break;
	case SMC_PROCESSABORT:
		FUNC6(conn);
		sk->sk_state = SMC_CLOSED;
		break;
	case SMC_PEERABORTWAIT:
	case SMC_CLOSED:
		/* nothing to do, add tracing in future patch */
		break;
	}

	if (old_state != sk->sk_state)
		sk->sk_state_change(sk);
	return rc;
}