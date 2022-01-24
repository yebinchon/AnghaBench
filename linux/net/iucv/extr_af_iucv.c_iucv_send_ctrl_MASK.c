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
typedef  int u8 ;
struct sock {int sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct iucv_sock {int /*<<< orphan*/  hs_dev; } ;
struct af_iucv_trans_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sock*,struct sk_buff*,int) ; 
 struct iucv_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC4 (struct sock*,int,int,int*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, u8 flags)
{
	struct iucv_sock *iucv = FUNC2(sk);
	int err = 0;
	int blen;
	struct sk_buff *skb;
	u8 shutdown = 0;

	blen = sizeof(struct af_iucv_trans_hdr) +
	       FUNC0(iucv->hs_dev);
	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		/* controlling flags should be sent anyway */
		shutdown = sk->sk_shutdown;
		sk->sk_shutdown &= RCV_SHUTDOWN;
	}
	skb = FUNC4(sk, blen, 1, &err);
	if (skb) {
		FUNC3(skb, blen);
		err = FUNC1(NULL, sk, skb, flags);
	}
	if (shutdown)
		sk->sk_shutdown = shutdown;
	return err;
}