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
struct linux_binfmt {int /*<<< orphan*/  lh; int /*<<< orphan*/  load_binary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  binfmt_lock ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct linux_binfmt * fmt, int insert)
{
	FUNC0(!fmt);
	if (FUNC1(!fmt->load_binary))
		return;
	FUNC4(&binfmt_lock);
	insert ? FUNC2(&fmt->lh, &formats) :
		 FUNC3(&fmt->lh, &formats);
	FUNC5(&binfmt_lock);
}