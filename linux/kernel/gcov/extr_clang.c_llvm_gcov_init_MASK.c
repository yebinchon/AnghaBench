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
struct gcov_info {int /*<<< orphan*/  head; int /*<<< orphan*/  functions; } ;
typedef  int /*<<< orphan*/  (* llvm_gcov_callback ) () ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_ADD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clang_gcov_list ; 
 struct gcov_info* current_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gcov_info*) ; 
 scalar_t__ gcov_events_enabled ; 
 int /*<<< orphan*/  gcov_lock ; 
 struct gcov_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(llvm_gcov_callback writeout, llvm_gcov_callback flush)
{
	struct gcov_info *info = FUNC2(sizeof(*info), GFP_KERNEL);

	if (!info)
		return;

	FUNC0(&info->head);
	FUNC0(&info->functions);

	FUNC4(&gcov_lock);

	FUNC3(&info->head, &clang_gcov_list);
	current_info = info;
	writeout();
	current_info = NULL;
	if (gcov_events_enabled)
		FUNC1(GCOV_ADD, info);

	FUNC5(&gcov_lock);
}