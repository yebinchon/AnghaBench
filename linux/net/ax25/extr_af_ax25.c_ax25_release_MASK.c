#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_type; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; void* sk_state; } ;
struct TYPE_14__ {int state; TYPE_1__* ax25_dev; int /*<<< orphan*/  n2count; int /*<<< orphan*/  sk; } ;
typedef  TYPE_2__ ax25_cb ;
struct TYPE_13__ {int /*<<< orphan*/ * values; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_COMMAND ; 
 int /*<<< orphan*/  AX25_DISC ; 
 int /*<<< orphan*/  AX25_POLLON ; 
#define  AX25_PROTO_DAMA_SLAVE 135 
#define  AX25_PROTO_STD_DUPLEX 134 
#define  AX25_PROTO_STD_SIMPLEX 133 
#define  AX25_STATE_0 132 
#define  AX25_STATE_1 131 
#define  AX25_STATE_2 130 
#define  AX25_STATE_3 129 
#define  AX25_STATE_4 128 
 size_t AX25_VALUES_PROTOCOL ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 scalar_t__ SOCK_SEQPACKET ; 
 void* TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 TYPE_2__* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 

__attribute__((used)) static int FUNC19(struct socket *sock)
{
	struct sock *sk = sock->sk;
	ax25_cb *ax25;

	if (sk == NULL)
		return 0;

	FUNC13(sk);
	FUNC14(sk);
	FUNC9(sk);
	ax25 = FUNC11(sk);

	if (sk->sk_type == SOCK_SEQPACKET) {
		switch (ax25->state) {
		case AX25_STATE_0:
			FUNC10(sk);
			FUNC3(ax25, 0);
			FUNC9(sk);
			FUNC2(ax25);
			break;

		case AX25_STATE_1:
		case AX25_STATE_2:
			FUNC4(ax25, AX25_DISC, AX25_POLLON, AX25_COMMAND);
			FUNC10(sk);
			FUNC3(ax25, 0);
			FUNC9(sk);
			if (!FUNC12(ax25->sk, SOCK_DESTROY))
				FUNC2(ax25);
			break;

		case AX25_STATE_3:
		case AX25_STATE_4:
			FUNC1(ax25);
			ax25->n2count = 0;

			switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
			case AX25_PROTO_STD_SIMPLEX:
			case AX25_PROTO_STD_DUPLEX:
				FUNC4(ax25,
						  AX25_DISC,
						  AX25_POLLON,
						  AX25_COMMAND);
				FUNC7(ax25);
				FUNC8(ax25);
				FUNC6(ax25);
				break;
#ifdef CONFIG_AX25_DAMA_SLAVE
			case AX25_PROTO_DAMA_SLAVE:
				ax25_stop_t3timer(ax25);
				ax25_stop_idletimer(ax25);
				break;
#endif
			}
			FUNC0(ax25);
			FUNC5(ax25);
			ax25->state = AX25_STATE_2;
			sk->sk_state                = TCP_CLOSE;
			sk->sk_shutdown            |= SEND_SHUTDOWN;
			sk->sk_state_change(sk);
			FUNC16(sk, SOCK_DESTROY);
			break;

		default:
			break;
		}
	} else {
		sk->sk_state     = TCP_CLOSE;
		sk->sk_shutdown |= SEND_SHUTDOWN;
		sk->sk_state_change(sk);
		FUNC2(ax25);
	}

	sock->sk   = NULL;
	FUNC10(sk);
	FUNC15(sk);

	return 0;
}