#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct udp_sock {scalar_t__ pending; scalar_t__ len; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct flowi6 {int dummy; } ;
struct TYPE_5__ {struct flowi6 ip6; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; TYPE_2__ fl; } ;
struct TYPE_8__ {TYPE_3__ cork; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 TYPE_4__* FUNC0 (struct sock*) ; 
 struct sk_buff* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*) ; 
 struct udp_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sk_buff*,struct flowi6*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sock *sk)
{
	struct sk_buff *skb;
	struct udp_sock  *up = FUNC3(sk);
	struct flowi6 fl6;
	int err = 0;

	if (up->pending == AF_INET)
		return FUNC2(sk);

	/* ip6_finish_skb will release the cork, so make a copy of
	 * fl6 here.
	 */
	fl6 = FUNC0(sk)->cork.fl.u.ip6;

	skb = FUNC1(sk);
	if (!skb)
		goto out;

	err = FUNC4(skb, &fl6, &FUNC0(sk)->cork.base);

out:
	up->len = 0;
	up->pending = 0;
	return err;
}