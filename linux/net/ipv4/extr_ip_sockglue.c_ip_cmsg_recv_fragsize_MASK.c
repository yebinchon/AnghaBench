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
typedef  int /*<<< orphan*/  val ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int frag_max_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP_RECVFRAGSIZE ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC2(struct msghdr *msg, struct sk_buff *skb)
{
	int val;

	if (FUNC0(skb)->frag_max_size == 0)
		return;

	val = FUNC0(skb)->frag_max_size;
	FUNC1(msg, SOL_IP, IP_RECVFRAGSIZE, sizeof(val), &val);
}