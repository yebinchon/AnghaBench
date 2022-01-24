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
struct TYPE_2__ {int /*<<< orphan*/  deferredq; } ;
struct tipc_msg {int dummy; } ;
struct tipc_sock {int group_is_open; TYPE_1__ mc_method; int /*<<< orphan*/  snd_win; int /*<<< orphan*/  rcv_win; int /*<<< orphan*/  dupl_rcvcnt; int /*<<< orphan*/  conn_timeout; int /*<<< orphan*/  portid; struct tipc_msg phdr; int /*<<< orphan*/  cong_links; int /*<<< orphan*/  publications; int /*<<< orphan*/  max_pkt; } ;
struct socket {int type; struct proto_ops const* ops; } ;
struct sock {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/  sk_rcvbuf; int /*<<< orphan*/  sk_backlog_rcv; scalar_t__ sk_shutdown; int /*<<< orphan*/  sk_timer; } ;
struct proto_ops {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_TIPC ; 
 int /*<<< orphan*/  CONN_TIMEOUT_DEFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_PKT_DEFAULT ; 
 int /*<<< orphan*/  NAMED_H_SIZE ; 
 int /*<<< orphan*/  RCVBUF_MIN ; 
#define  SOCK_DGRAM 131 
#define  SOCK_RDM 130 
#define  SOCK_SEQPACKET 129 
#define  SOCK_STREAM 128 
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int /*<<< orphan*/  TIPC_LOW_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_NAMED_MSG ; 
 int /*<<< orphan*/  TIPC_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct proto_ops msg_ops ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct proto_ops packet_ops ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 struct proto_ops stream_ops ; 
 int /*<<< orphan*/ * sysctl_tipc_rmem ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_data_ready ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net*) ; 
 int /*<<< orphan*/  tipc_proto ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tipc_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  tipc_sk_backlog_rcv ; 
 scalar_t__ FUNC13 (struct tipc_sock*) ; 
 int /*<<< orphan*/  tipc_sk_timeout ; 
 scalar_t__ FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  tipc_sock_destruct ; 
 int /*<<< orphan*/  tipc_write_space ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_sock*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tipc_sock*,int) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct net *net, struct socket *sock,
			  int protocol, int kern)
{
	const struct proto_ops *ops;
	struct sock *sk;
	struct tipc_sock *tsk;
	struct tipc_msg *msg;

	/* Validate arguments */
	if (FUNC19(protocol != 0))
		return -EPROTONOSUPPORT;

	switch (sock->type) {
	case SOCK_STREAM:
		ops = &stream_ops;
		break;
	case SOCK_SEQPACKET:
		ops = &packet_ops;
		break;
	case SOCK_DGRAM:
	case SOCK_RDM:
		ops = &msg_ops;
		break;
	default:
		return -EPROTOTYPE;
	}

	/* Allocate socket's protocol area */
	sk = FUNC5(net, AF_TIPC, GFP_KERNEL, &tipc_proto, kern);
	if (sk == NULL)
		return -ENOMEM;

	tsk = FUNC12(sk);
	tsk->max_pkt = MAX_PKT_DEFAULT;
	FUNC0(&tsk->publications);
	FUNC0(&tsk->cong_links);
	msg = &tsk->phdr;

	/* Finish initializing socket data structures */
	sock->ops = ops;
	FUNC7(sock, sk);
	FUNC11(sk, TIPC_OPEN);
	if (FUNC13(tsk)) {
		FUNC4("Socket create failed; port number exhausted\n");
		return -EINVAL;
	}

	/* Ensure tsk is visible before we read own_addr. */
	FUNC6();

	FUNC9(FUNC10(net), msg, TIPC_LOW_IMPORTANCE,
		      TIPC_NAMED_MSG, NAMED_H_SIZE, 0);

	FUNC3(msg, tsk->portid);
	FUNC8(&sk->sk_timer, tipc_sk_timeout, 0);
	sk->sk_shutdown = 0;
	sk->sk_backlog_rcv = tipc_sk_backlog_rcv;
	sk->sk_rcvbuf = sysctl_tipc_rmem[1];
	sk->sk_data_ready = tipc_data_ready;
	sk->sk_write_space = tipc_write_space;
	sk->sk_destruct = tipc_sock_destruct;
	tsk->conn_timeout = CONN_TIMEOUT_DEFAULT;
	tsk->group_is_open = true;
	FUNC2(&tsk->dupl_rcvcnt, 0);

	/* Start out with safe limits until we receive an advertised window */
	tsk->snd_win = FUNC16(RCVBUF_MIN);
	tsk->rcv_win = tsk->snd_win;

	if (FUNC14(sk)) {
		FUNC18(tsk, true);
		if (sock->type == SOCK_DGRAM)
			FUNC17(tsk, true);
	}
	FUNC1(&tsk->mc_method.deferredq);
	FUNC15(sk, NULL, TIPC_DUMP_NONE, " ");
	return 0;
}