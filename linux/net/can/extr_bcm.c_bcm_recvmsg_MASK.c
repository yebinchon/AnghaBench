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
struct socket {struct sock* sk; } ;
struct sockaddr_can {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t len; int /*<<< orphan*/  cb; int /*<<< orphan*/  data; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; } ;

/* Variables and functions */
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct msghdr*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct msghdr *msg, size_t size,
		       int flags)
{
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	int error = 0;
	int noblock;
	int err;

	noblock =  flags & MSG_DONTWAIT;
	flags   &= ~MSG_DONTWAIT;
	skb = FUNC4(sk, flags, noblock, &error);
	if (!skb)
		return error;

	if (skb->len < size)
		size = skb->len;

	err = FUNC2(msg, skb->data, size);
	if (err < 0) {
		FUNC3(sk, skb);
		return err;
	}

	FUNC5(msg, sk, skb);

	if (msg->msg_name) {
		FUNC0(sizeof(struct sockaddr_can));
		msg->msg_namelen = sizeof(struct sockaddr_can);
		FUNC1(msg->msg_name, skb->cb, msg->msg_namelen);
	}

	FUNC3(sk, skb);

	return size;
}