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
struct tcp_sock {scalar_t__ syn_fastopen_ch; int /*<<< orphan*/  out_of_order_queue; int /*<<< orphan*/  data_segs_in; int /*<<< orphan*/  syn_fastopen; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_8__ {int tcp_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfo_active_disable_times; } ;
struct TYPE_7__ {TYPE_2__ ipv4; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int TCPHDR_FIN ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 struct dst_entry* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 TYPE_3__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk)
{
	struct tcp_sock *tp = FUNC9(sk);
	struct dst_entry *dst;
	struct sk_buff *skb;

	if (!tp->syn_fastopen)
		return;

	if (!tp->data_segs_in) {
		skb = FUNC5(&tp->out_of_order_queue);
		if (skb && !FUNC6(skb)) {
			if (FUNC0(skb)->tcp_flags & TCPHDR_FIN) {
				FUNC8(sk);
				return;
			}
		}
	} else if (tp->syn_fastopen_ch &&
		   FUNC1(&FUNC7(sk)->ipv4.tfo_active_disable_times)) {
		dst = FUNC4(sk);
		if (!(dst && dst->dev && (dst->dev->flags & IFF_LOOPBACK)))
			FUNC2(&FUNC7(sk)->ipv4.tfo_active_disable_times, 0);
		FUNC3(dst);
	}
}