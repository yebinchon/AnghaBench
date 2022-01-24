#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {scalar_t__ sk_type; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndbuf; int /*<<< orphan*/  sk_rcvbuf; int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_priority; } ;
struct rose_sock {int /*<<< orphan*/  qbitincl; int /*<<< orphan*/  device; int /*<<< orphan*/  defer; int /*<<< orphan*/  idle; int /*<<< orphan*/  hb; int /*<<< orphan*/  t3; int /*<<< orphan*/  t2; int /*<<< orphan*/  t1; int /*<<< orphan*/  idletimer; int /*<<< orphan*/  timer; scalar_t__ fraglen; int /*<<< orphan*/  frag_queue; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PF_ROSE ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  rose_proto ; 
 struct rose_sock* FUNC0 (struct sock*) ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC7(struct sock *osk)
{
	struct sock *sk;
	struct rose_sock *rose, *orose;

	if (osk->sk_type != SOCK_SEQPACKET)
		return NULL;

	sk = FUNC1(FUNC5(osk), PF_ROSE, GFP_ATOMIC, &rose_proto, 0);
	if (sk == NULL)
		return NULL;

	rose = FUNC0(sk);

	FUNC4(NULL, sk);

	FUNC2(&rose->ack_queue);
#ifdef M_BIT
	skb_queue_head_init(&rose->frag_queue);
	rose->fraglen  = 0;
#endif

	sk->sk_type     = osk->sk_type;
	sk->sk_priority = osk->sk_priority;
	sk->sk_protocol = osk->sk_protocol;
	sk->sk_rcvbuf   = osk->sk_rcvbuf;
	sk->sk_sndbuf   = osk->sk_sndbuf;
	sk->sk_state    = TCP_ESTABLISHED;
	FUNC3(sk, osk);

	FUNC6(&rose->timer, NULL, 0);
	FUNC6(&rose->idletimer, NULL, 0);

	orose		= FUNC0(osk);
	rose->t1	= orose->t1;
	rose->t2	= orose->t2;
	rose->t3	= orose->t3;
	rose->hb	= orose->hb;
	rose->idle	= orose->idle;
	rose->defer	= orose->defer;
	rose->device	= orose->device;
	rose->qbitincl	= orose->qbitincl;

	return sk;
}