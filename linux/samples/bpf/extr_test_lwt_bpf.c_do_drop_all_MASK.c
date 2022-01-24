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
 int BPF_DROP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

int FUNC1(struct __sk_buff *skb)
{
	FUNC0("dropping with: %d\n", BPF_DROP);
	return BPF_DROP;
}