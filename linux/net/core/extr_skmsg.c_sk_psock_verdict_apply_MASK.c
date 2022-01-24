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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct tcp_skb_cb {TYPE_1__ bpf; } ;
struct sock {int /*<<< orphan*/  sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_psock {int /*<<< orphan*/  work; int /*<<< orphan*/  ingress_skb; struct sock* sk; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_INGRESS ; 
 int /*<<< orphan*/  SK_PSOCK_TX_ENABLED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 struct tcp_skb_cb* FUNC0 (struct sk_buff*) ; 
#define  __SK_DROP 130 
#define  __SK_PASS 129 
#define  __SK_REDIRECT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sk_psock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_psock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (struct sk_buff*) ; 
 struct sock* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct sk_psock *psock,
				   struct sk_buff *skb, int verdict)
{
	struct sk_psock *psock_other;
	struct sock *sk_other;
	bool ingress;

	switch (verdict) {
	case __SK_PASS:
		sk_other = psock->sk;
		if (FUNC8(sk_other, SOCK_DEAD) ||
		    !FUNC5(psock, SK_PSOCK_TX_ENABLED)) {
			goto out_free;
		}
		if (FUNC1(&sk_other->sk_rmem_alloc) <=
		    sk_other->sk_rcvbuf) {
			struct tcp_skb_cb *tcp = FUNC0(skb);

			tcp->bpf.flags |= BPF_F_INGRESS;
			FUNC6(&psock->ingress_skb, skb);
			FUNC3(&psock->work);
			break;
		}
		goto out_free;
	case __SK_REDIRECT:
		sk_other = FUNC11(skb);
		if (FUNC12(!sk_other))
			goto out_free;
		psock_other = FUNC4(sk_other);
		if (!psock_other || FUNC8(sk_other, SOCK_DEAD) ||
		    !FUNC5(psock_other, SK_PSOCK_TX_ENABLED))
			goto out_free;
		ingress = FUNC10(skb);
		if ((!ingress && FUNC9(sk_other)) ||
		    (ingress &&
		     FUNC1(&sk_other->sk_rmem_alloc) <=
		     sk_other->sk_rcvbuf)) {
			if (!ingress)
				FUNC7(skb, sk_other);
			FUNC6(&psock_other->ingress_skb, skb);
			FUNC3(&psock_other->work);
			break;
		}
		/* fall-through */
	case __SK_DROP:
		/* fall-through */
	default:
out_free:
		FUNC2(skb);
	}
}