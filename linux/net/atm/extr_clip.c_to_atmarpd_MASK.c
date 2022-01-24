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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct atmarp_ctrl {int type; int itf_num; int /*<<< orphan*/  ip; } ;
typedef  enum atmarp_ctrl_type { ____Placeholder_atmarp_ctrl_type } atmarp_ctrl_type ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int EUNATCH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmarpd ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ) ; 
 struct atmarp_ctrl* FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(enum atmarp_ctrl_type type, int itf, __be32 ip)
{
	struct sock *sk;
	struct atmarp_ctrl *ctrl;
	struct sk_buff *skb;

	FUNC2("(%d)\n", type);
	if (!atmarpd)
		return -EUNATCH;
	skb = FUNC0(sizeof(struct atmarp_ctrl), GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;
	ctrl = FUNC4(skb, sizeof(struct atmarp_ctrl));
	ctrl->type = type;
	ctrl->itf_num = itf;
	ctrl->ip = ip;
	FUNC1(atmarpd, skb->truesize);

	sk = FUNC3(atmarpd);
	FUNC5(&sk->sk_receive_queue, skb);
	sk->sk_data_ready(sk);
	return 0;
}