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
struct tipc_sock {struct tipc_group* group; int /*<<< orphan*/  cong_link_cnt; int /*<<< orphan*/  cong_links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_group {int dummy; } ;
struct sock {int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  CONN_MANAGER 131 
#define  GROUP_PROTOCOL 130 
#define  SOCK_WAKEUP 129 
#define  TOP_SRV 128 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_group*,int*,int /*<<< orphan*/ *,struct tipc_msg*,struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_group*,int*,struct tipc_msg*,struct sk_buff_head*,struct sk_buff_head*) ; 
 struct tipc_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_sock*,struct sk_buff*,struct sk_buff_head*,struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC12(struct sock *sk,
			      struct sk_buff_head *inputq,
			      struct sk_buff_head *xmitq)
{
	struct sk_buff *skb = FUNC0(inputq);
	struct tipc_sock *tsk = FUNC10(sk);
	struct tipc_msg *hdr = FUNC1(skb);
	struct tipc_group *grp = tsk->group;
	bool wakeup = false;

	switch (FUNC4(hdr)) {
	case CONN_MANAGER:
		FUNC11(tsk, skb, inputq, xmitq);
		return;
	case SOCK_WAKEUP:
		FUNC7(&tsk->cong_links, FUNC3(hdr), 0);
		/* coupled with smp_rmb() in tipc_wait_for_cond() */
		FUNC5();
		tsk->cong_link_cnt--;
		wakeup = true;
		break;
	case GROUP_PROTOCOL:
		FUNC9(grp, &wakeup, hdr, inputq, xmitq);
		break;
	case TOP_SRV:
		FUNC8(tsk->group, &wakeup, &sk->sk_rcvbuf,
				      hdr, inputq, xmitq);
		break;
	default:
		break;
	}

	if (wakeup)
		sk->sk_write_space(sk);

	FUNC2(skb);
}