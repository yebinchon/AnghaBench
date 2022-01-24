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
struct flow_head {int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct flow_head* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct flow_head*) ; 

__attribute__((used)) static int FUNC3(struct tcf_proto *tp)
{
	struct flow_head *head;

	head = FUNC1(sizeof(*head), GFP_KERNEL);
	if (head == NULL)
		return -ENOBUFS;
	FUNC0(&head->filters);
	FUNC2(tp->root, head);
	return 0;
}