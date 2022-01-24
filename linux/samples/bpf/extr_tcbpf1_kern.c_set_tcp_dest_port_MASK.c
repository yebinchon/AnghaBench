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
typedef  int /*<<< orphan*/  new_port ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CSUM_OFF ; 
 int /*<<< orphan*/  TCP_DPORT_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct __sk_buff *skb, __u16 new_port)
{
	__u16 old_port = FUNC2(FUNC3(skb, TCP_DPORT_OFF));

	FUNC0(skb, TCP_CSUM_OFF, old_port, new_port, sizeof(new_port));
	FUNC1(skb, TCP_DPORT_OFF, &new_port, sizeof(new_port), 0);
}