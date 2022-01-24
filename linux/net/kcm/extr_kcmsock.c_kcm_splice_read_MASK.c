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
struct strp_msg {size_t full_len; int offset; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pipe_inode_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; } ;
struct kcm_sock {TYPE_1__ stats; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned int MSG_DONTWAIT ; 
 struct kcm_sock* FUNC1 (struct sock*) ; 
 struct sk_buff* FUNC2 (struct sock*,unsigned int,long,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sk_buff*,struct sock*,int,struct pipe_inode_info*,size_t,unsigned int) ; 
 long FUNC6 (struct sock*,unsigned int) ; 
 struct strp_msg* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static ssize_t FUNC8(struct socket *sock, loff_t *ppos,
			       struct pipe_inode_info *pipe, size_t len,
			       unsigned int flags)
{
	struct sock *sk = sock->sk;
	struct kcm_sock *kcm = FUNC1(sk);
	long timeo;
	struct strp_msg *stm;
	int err = 0;
	ssize_t copied;
	struct sk_buff *skb;

	/* Only support splice for SOCKSEQPACKET */

	timeo = FUNC6(sk, flags & MSG_DONTWAIT);

	FUNC3(sk);

	skb = FUNC2(sk, flags, timeo, &err);
	if (!skb)
		goto err_out;

	/* Okay, have a message on the receive queue */

	stm = FUNC7(skb);

	if (len > stm->full_len)
		len = stm->full_len;

	copied = FUNC5(skb, sk, stm->offset, pipe, len, flags);
	if (copied < 0) {
		err = copied;
		goto err_out;
	}

	FUNC0(kcm->stats.rx_bytes, copied);

	stm->offset += copied;
	stm->full_len -= copied;

	/* We have no way to return MSG_EOR. If all the bytes have been
	 * read we still leave the message in the receive socket buffer.
	 * A subsequent recvmsg needs to be done to return MSG_EOR and
	 * finish reading the message.
	 */

	FUNC4(sk);

	return copied;

err_out:
	FUNC4(sk);

	return err;
}