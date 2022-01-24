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
struct buffer_head {int /*<<< orphan*/  b_assoc_buffers; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bh_accounting ; 
 int /*<<< orphan*/  bh_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct buffer_head *bh)
{
	FUNC0(!FUNC3(&bh->b_assoc_buffers));
	FUNC2(bh_cachep, bh);
	FUNC4();
	FUNC1(bh_accounting.nr);
	FUNC6();
	FUNC5();
}