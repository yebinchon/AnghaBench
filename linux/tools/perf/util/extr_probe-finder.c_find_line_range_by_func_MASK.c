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
struct line_finder {int /*<<< orphan*/  cu_die; } ;
struct dwarf_callback_param {void* data; int retval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dwarf_callback_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_range_search_cb ; 

__attribute__((used)) static int FUNC1(struct line_finder *lf)
{
	struct dwarf_callback_param param = {.data = (void *)lf, .retval = 0};
	FUNC0(&lf->cu_die, line_range_search_cb, &param, 0);
	return param.retval;
}