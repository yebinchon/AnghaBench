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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hlist_head* FUNC2 (int,int) ; 

__attribute__((used)) static struct hlist_head *FUNC3(int bytes)
{
	if (bytes <= PAGE_SIZE)
		return FUNC2(bytes, GFP_KERNEL);
	else
		return (struct hlist_head *)
			FUNC0(GFP_KERNEL | __GFP_ZERO,
					 FUNC1(bytes));
}