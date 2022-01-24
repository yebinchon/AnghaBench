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
struct x25_sock {int fraglen; TYPE_1__* neighbour; int /*<<< orphan*/  fragment_queue; } ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {scalar_t__ extended; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  X25_EXT_MIN_LEN ; 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 struct x25_sock* FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct sk_buff *skb, int more)
{
	struct sk_buff *skbo, *skbn = skb;
	struct x25_sock *x25 = FUNC11(sk);

	if (more) {
		x25->fraglen += skb->len;
		FUNC6(&x25->fragment_queue, skb);
		FUNC8(skb, sk);
		return 0;
	}

	if (!more && x25->fraglen > 0) {	/* End of fragment */
		int len = x25->fraglen + skb->len;

		if ((skbn = FUNC0(len, GFP_ATOMIC)) == NULL){
			FUNC1(skb);
			return 1;
		}

		FUNC6(&x25->fragment_queue, skb);

		FUNC7(skbn);

		skbo = FUNC3(&x25->fragment_queue);
		FUNC2(skbo, FUNC5(skbn, skbo->len),
					  skbo->len);
		FUNC1(skbo);

		while ((skbo =
			FUNC3(&x25->fragment_queue)) != NULL) {
			FUNC4(skbo, (x25->neighbour->extended) ?
					X25_EXT_MIN_LEN : X25_STD_MIN_LEN);
			FUNC2(skbo,
						  FUNC5(skbn, skbo->len),
						  skbo->len);
			FUNC1(skbo);
		}

		x25->fraglen = 0;
	}

	FUNC8(skbn, sk);
	FUNC6(&sk->sk_receive_queue, skbn);
	if (!FUNC9(sk, SOCK_DEAD))
		sk->sk_data_ready(sk);

	return 0;
}