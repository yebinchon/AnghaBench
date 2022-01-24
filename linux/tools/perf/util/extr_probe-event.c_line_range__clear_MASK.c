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
struct line_range {int /*<<< orphan*/  line_list; int /*<<< orphan*/  comp_dir; int /*<<< orphan*/  path; int /*<<< orphan*/  file; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct line_range *lr)
{
	FUNC1(&lr->function);
	FUNC1(&lr->file);
	FUNC1(&lr->path);
	FUNC1(&lr->comp_dir);
	FUNC0(lr->line_list);
}