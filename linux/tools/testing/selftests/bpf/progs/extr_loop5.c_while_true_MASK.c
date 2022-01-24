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
struct __sk_buff {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

int FUNC1(volatile struct __sk_buff* skb)
{
	int i = 0;

	while (1) {
		if (skb->len)
			i += 3;
		else
			i += 7;
		if (i == 9)
			break;
		FUNC0();
		if (i == 10)
			break;
		FUNC0();
		if (i == 13)
			break;
		FUNC0();
		if (i == 14)
			break;
	}
	return i;
}