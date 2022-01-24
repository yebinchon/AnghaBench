#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {int dummy; } ;
struct inline_node {int /*<<< orphan*/  val; } ;
struct inline_list {char* srcline; int /*<<< orphan*/  list; struct symbol* symbol; } ;
struct TYPE_2__ {scalar_t__ order; } ;

/* Variables and functions */
 scalar_t__ ORDER_CALLEE ; 
 TYPE_1__ callchain_param ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct inline_list* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct symbol *symbol, char *srcline,
			       struct inline_node *node)
{
	struct inline_list *ilist;

	ilist = FUNC2(sizeof(*ilist));
	if (ilist == NULL)
		return -1;

	ilist->symbol = symbol;
	ilist->srcline = srcline;

	if (callchain_param.order == ORDER_CALLEE)
		FUNC1(&ilist->list, &node->val);
	else
		FUNC0(&ilist->list, &node->val);

	return 0;
}