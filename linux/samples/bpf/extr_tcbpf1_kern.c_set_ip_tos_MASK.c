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
struct __sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  new_tos ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  IP_CSUM_OFF ; 
 int /*<<< orphan*/  TOS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct __sk_buff *skb, __u8 new_tos)
{
	__u8 old_tos = FUNC3(skb, TOS_OFF);

	FUNC0(skb, IP_CSUM_OFF, FUNC2(old_tos), FUNC2(new_tos), 2);
	FUNC1(skb, TOS_OFF, &new_tos, sizeof(new_tos), 0);
}