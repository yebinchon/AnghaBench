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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct gcov_fn_info {int /*<<< orphan*/  head; int /*<<< orphan*/  function_name; void* cfg_checksum; int /*<<< orphan*/  use_extra_checksum; void* checksum; void* ident; } ;
struct TYPE_2__ {int /*<<< orphan*/  functions; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current_info ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct gcov_fn_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(u32 ident, const char *function_name,
		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
{
	struct gcov_fn_info *info = FUNC2(sizeof(*info), GFP_KERNEL);

	if (!info)
		return;

	FUNC0(&info->head);
	info->ident = ident;
	info->checksum = func_checksum;
	info->use_extra_checksum = use_extra_checksum;
	info->cfg_checksum = cfg_checksum;
	if (function_name)
		info->function_name = FUNC1(function_name, GFP_KERNEL);

	FUNC3(&info->head, &current_info->functions);
}