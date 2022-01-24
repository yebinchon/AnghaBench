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
struct tipc_link {int /*<<< orphan*/  bc_rcvlink; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_link*,struct sk_buff_head*,struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC6(struct tipc_link *l,
					struct sk_buff_head *xmitq)
{
	struct sk_buff_head list;

	FUNC0(&list);
	if (!FUNC4(l->bc_rcvlink, false, 0, &list))
		return;
	FUNC2(FUNC1(FUNC3(&list)), true);
	FUNC5(l, &list, xmitq);
}