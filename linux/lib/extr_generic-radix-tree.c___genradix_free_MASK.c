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
struct genradix_root {int dummy; } ;
struct __genradix {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct genradix_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct genradix_root*) ; 
 struct genradix_root* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct __genradix *radix)
{
	struct genradix_root *r = FUNC3(&radix->root, NULL);

	FUNC0(FUNC2(r),
			      FUNC1(r));
}