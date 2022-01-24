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
struct tree_balance {int /*<<< orphan*/  tb_path; struct buffer_head** FL; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int) ; 
 int FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tree_balance *tb, int h)
{
	struct buffer_head *l, *f;
	int order;

	if ((f = FUNC4(tb->tb_path, h)) == NULL ||
	    (l = tb->FL[h]) == NULL)
		return 0;

	if (f == l)
		order = FUNC3(tb->tb_path, h) - 1;
	else {
		order = FUNC0(l);
		f = l;
	}

	return (FUNC2(f) - FUNC5(FUNC1(f, order)));
}