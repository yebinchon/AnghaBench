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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_proto {int dummy; } ;
struct cls_fl_head {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct cls_fl_head*,int /*<<< orphan*/ ) ; 
 struct cls_fl_head* FUNC1 (struct tcf_proto*) ; 

__attribute__((used)) static void *FUNC2(struct tcf_proto *tp, u32 handle)
{
	struct cls_fl_head *head = FUNC1(tp);

	return FUNC0(head, handle);
}