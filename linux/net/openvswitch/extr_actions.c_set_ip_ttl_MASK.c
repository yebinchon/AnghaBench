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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct iphdr {int ttl; int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, struct iphdr *nh, u8 new_ttl,
		       u8 mask)
{
	new_ttl = FUNC0(nh->ttl, new_ttl, mask);

	FUNC1(&nh->check, FUNC2(nh->ttl << 8), FUNC2(new_ttl << 8));
	nh->ttl = new_ttl;
}