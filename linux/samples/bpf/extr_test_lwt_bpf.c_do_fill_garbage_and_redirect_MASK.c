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

/* Variables and functions */
 int DST_IFINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct __sk_buff*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(struct __sk_buff *skb)
{
	int ifindex = DST_IFINDEX;
	FUNC0(skb);
	FUNC2("redirected to %d\n", ifindex);
	return FUNC1(ifindex, 0);
}