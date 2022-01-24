#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  eg_info; } ;
struct k_message {TYPE_1__ content; int /*<<< orphan*/  type; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctrl_info; } ;
typedef  TYPE_2__ eg_cache_entry ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_PLANE_PURGE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct sock* FUNC5 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct atm_vcc *vcc, eg_cache_entry *entry)
{
	struct sock *sk;
	struct k_message *purge_msg;
	struct sk_buff *skb;

	FUNC2("entering\n");
	if (vcc == NULL) {
		FUNC4("vcc == NULL\n");
		return;
	}

	skb = FUNC0(sizeof(struct k_message), GFP_ATOMIC);
	if (skb == NULL) {
		FUNC4("out of memory\n");
		return;
	}

	FUNC6(skb, sizeof(struct k_message));
	FUNC3(skb->data, 0, sizeof(struct k_message));
	purge_msg = (struct k_message *)skb->data;
	purge_msg->type = DATA_PLANE_PURGE;
	if (entry != NULL)
		purge_msg->content.eg_info = entry->ctrl_info;

	FUNC1(vcc, skb->truesize);

	sk = FUNC5(vcc);
	FUNC7(&sk->sk_receive_queue, skb);
	sk->sk_data_ready(sk);
	FUNC2("exiting\n");
}