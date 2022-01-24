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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff_head*) ; 

__attribute__((used)) static inline void FUNC5(struct sk_buff_head *list,
						   struct sk_buff_head *head)
{
	struct sk_buff_head tmp;

	FUNC0(&tmp);

	FUNC2(&list->lock);
	FUNC1(list, &tmp);
	FUNC3(&list->lock);
	FUNC4(&tmp, head);
}