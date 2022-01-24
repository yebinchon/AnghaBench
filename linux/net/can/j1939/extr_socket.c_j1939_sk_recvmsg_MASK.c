#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  pgn; int /*<<< orphan*/  addr; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ j1939; } ;
struct sockaddr_can {TYPE_2__ can_addr; int /*<<< orphan*/  can_ifindex; int /*<<< orphan*/  can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t len; int /*<<< orphan*/  skb_iif; int /*<<< orphan*/  data; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/  msg_namelen; struct sockaddr_can* msg_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  pgn; int /*<<< orphan*/  sa; int /*<<< orphan*/  src_name; scalar_t__ dst_name; scalar_t__ da; } ;
struct j1939_sk_buff_cb {int /*<<< orphan*/  msg_flags; TYPE_3__ addr; scalar_t__ priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CAN ; 
 int EINVAL ; 
 int /*<<< orphan*/  J1939_MIN_NAMELEN ; 
 int MSG_DONTWAIT ; 
 int MSG_ERRQUEUE ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int /*<<< orphan*/  SCM_J1939_DEST_ADDR ; 
 int /*<<< orphan*/  SCM_J1939_DEST_NAME ; 
 int /*<<< orphan*/  SCM_J1939_ERRQUEUE ; 
 int /*<<< orphan*/  SCM_J1939_PRIO ; 
 int /*<<< orphan*/  SOL_CAN_J1939 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct j1939_sk_buff_cb* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct msghdr*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_can*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sock*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct sock*,struct msghdr*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct msghdr *msg,
			    size_t size, int flags)
{
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	struct j1939_sk_buff_cb *skcb;
	int ret = 0;

	if (flags & ~(MSG_DONTWAIT | MSG_ERRQUEUE))
		return -EINVAL;

	if (flags & MSG_ERRQUEUE)
		return FUNC7(sock->sk, msg, size, SOL_CAN_J1939,
					  SCM_J1939_ERRQUEUE);

	skb = FUNC6(sk, flags, 0, &ret);
	if (!skb)
		return ret;

	if (size < skb->len)
		msg->msg_flags |= MSG_TRUNC;
	else
		size = skb->len;

	ret = FUNC2(msg, skb->data, size);
	if (ret < 0) {
		FUNC5(sk, skb);
		return ret;
	}

	skcb = FUNC1(skb);
	if (FUNC0(skcb->addr.da))
		FUNC4(msg, SOL_CAN_J1939, SCM_J1939_DEST_ADDR,
			 sizeof(skcb->addr.da), &skcb->addr.da);

	if (skcb->addr.dst_name)
		FUNC4(msg, SOL_CAN_J1939, SCM_J1939_DEST_NAME,
			 sizeof(skcb->addr.dst_name), &skcb->addr.dst_name);

	FUNC4(msg, SOL_CAN_J1939, SCM_J1939_PRIO,
		 sizeof(skcb->priority), &skcb->priority);

	if (msg->msg_name) {
		struct sockaddr_can *paddr = msg->msg_name;

		msg->msg_namelen = J1939_MIN_NAMELEN;
		FUNC3(msg->msg_name, 0, msg->msg_namelen);
		paddr->can_family = AF_CAN;
		paddr->can_ifindex = skb->skb_iif;
		paddr->can_addr.j1939.name = skcb->addr.src_name;
		paddr->can_addr.j1939.addr = skcb->addr.sa;
		paddr->can_addr.j1939.pgn = skcb->addr.pgn;
	}

	FUNC8(msg, sk, skb);
	msg->msg_flags |= skcb->msg_flags;
	FUNC5(sk, skb);

	return size;
}