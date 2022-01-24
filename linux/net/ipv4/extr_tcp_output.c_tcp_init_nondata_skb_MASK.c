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
typedef  int u8 ;
typedef  void* u32 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct TYPE_2__ {int tcp_flags; void* end_seq; void* seq; scalar_t__ sacked; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int TCPHDR_FIN ; 
 int TCPHDR_SYN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, u32 seq, u8 flags)
{
	skb->ip_summed = CHECKSUM_PARTIAL;

	FUNC0(skb)->tcp_flags = flags;
	FUNC0(skb)->sacked = 0;

	FUNC1(skb, 1);

	FUNC0(skb)->seq = seq;
	if (flags & (TCPHDR_SYN | TCPHDR_FIN))
		seq++;
	FUNC0(skb)->end_seq = seq;
}