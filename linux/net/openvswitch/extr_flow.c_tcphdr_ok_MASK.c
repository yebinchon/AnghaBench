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
struct tcphdr {int dummy; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(struct sk_buff *skb)
{
	int th_ofs = FUNC1(skb);
	int tcp_len;

	if (FUNC3(!FUNC0(skb, th_ofs + sizeof(struct tcphdr))))
		return false;

	tcp_len = FUNC2(skb);
	if (FUNC3(tcp_len < sizeof(struct tcphdr) ||
		     skb->len < th_ofs + tcp_len))
		return false;

	return true;
}