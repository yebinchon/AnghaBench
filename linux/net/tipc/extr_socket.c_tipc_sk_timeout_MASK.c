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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_sock {int cong_link_cnt; int /*<<< orphan*/  cong_links; int /*<<< orphan*/  portid; } ;
struct timer_list {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_timer; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int HZ ; 
 scalar_t__ TIPC_CONNECTING ; 
 scalar_t__ TIPC_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct sock* sk ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  sk_timer ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sk_buff_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_sock* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_sock*) ; 

__attribute__((used)) static void FUNC15(struct timer_list *t)
{
	struct sock *sk = FUNC3(sk, t, sk_timer);
	struct tipc_sock *tsk = FUNC11(sk);
	u32 pnode = FUNC14(tsk);
	struct sk_buff_head list;
	int rc = 0;

	FUNC0(&list);
	FUNC1(sk);

	/* Try again later if socket is busy */
	if (FUNC7(sk)) {
		FUNC4(sk, &sk->sk_timer, jiffies + HZ / 20);
		FUNC2(sk);
		return;
	}

	if (sk->sk_state == TIPC_ESTABLISHED)
		FUNC12(sk, &list);
	else if (sk->sk_state == TIPC_CONNECTING)
		FUNC13(sk, &list);

	FUNC2(sk);

	if (!FUNC5(&list))
		rc = FUNC10(FUNC6(sk), &list, pnode, tsk->portid);

	/* SYN messages may cause link congestion */
	if (rc == -ELINKCONG) {
		FUNC9(&tsk->cong_links, pnode, 0);
		tsk->cong_link_cnt = 1;
	}
	FUNC8(sk);
}