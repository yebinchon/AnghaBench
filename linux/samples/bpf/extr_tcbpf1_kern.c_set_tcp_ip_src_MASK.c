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
typedef  int /*<<< orphan*/  new_ip ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  IP_CSUM_OFF ; 
 int /*<<< orphan*/  IP_SRC_OFF ; 
 int IS_PSEUDO ; 
 int /*<<< orphan*/  TCP_CSUM_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct __sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct __sk_buff *skb, __u32 new_ip)
{
	__u32 old_ip = FUNC0(FUNC4(skb, IP_SRC_OFF));

	FUNC2(skb, TCP_CSUM_OFF, old_ip, new_ip, IS_PSEUDO | sizeof(new_ip));
	FUNC1(skb, IP_CSUM_OFF, old_ip, new_ip, sizeof(new_ip));
	FUNC3(skb, IP_SRC_OFF, &new_ip, sizeof(new_ip), 0);
}