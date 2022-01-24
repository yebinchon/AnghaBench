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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct route4_head {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct route4_head* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct route4_head*) ; 

__attribute__((used)) static int FUNC2(struct tcf_proto *tp)
{
	struct route4_head *head;

	head = FUNC0(sizeof(struct route4_head), GFP_KERNEL);
	if (head == NULL)
		return -ENOBUFS;

	FUNC1(tp->root, head);
	return 0;
}