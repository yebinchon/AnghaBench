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
struct mpoa_client {int /*<<< orphan*/  mpoad_vcc; } ;
struct k_message {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct k_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

int FUNC8(struct k_message *mesg, struct mpoa_client *mpc)
{
	struct sk_buff *skb;
	struct sock *sk;

	if (mpc == NULL || !mpc->mpoad_vcc) {
		FUNC2("mesg %d to a non-existent mpoad\n", mesg->type);
		return -ENXIO;
	}

	skb = FUNC0(sizeof(struct k_message), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;
	FUNC5(skb, sizeof(struct k_message));
	FUNC4(skb, mesg, sizeof(*mesg));
	FUNC1(mpc->mpoad_vcc, skb->truesize);

	sk = FUNC3(mpc->mpoad_vcc);
	FUNC6(&sk->sk_receive_queue, skb);
	sk->sk_data_ready(sk);

	return 0;
}