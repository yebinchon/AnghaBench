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
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bh_accounting ; 
 int /*<<< orphan*/  bh_cachep ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct buffer_head *FUNC6(gfp_t gfp_flags)
{
	struct buffer_head *ret = FUNC2(bh_cachep, gfp_flags);
	if (ret) {
		FUNC0(&ret->b_assoc_buffers);
		FUNC3();
		FUNC1(bh_accounting.nr);
		FUNC5();
		FUNC4();
	}
	return ret;
}