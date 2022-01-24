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
struct netlbl_af4list {int /*<<< orphan*/  valid; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 struct netlbl_af4list* FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct list_head* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct netlbl_af4list *FUNC3(struct list_head *s,
							 struct list_head *h)
{
	struct list_head *i = s;
	struct netlbl_af4list *n = FUNC0(s);
	while (i != h && !n->valid) {
		i = FUNC2(FUNC1(i));
		n = FUNC0(i);
	}
	return n;
}