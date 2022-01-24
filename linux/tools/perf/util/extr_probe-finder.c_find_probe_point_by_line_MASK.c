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
struct probe_finder {int /*<<< orphan*/  cu_die; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct probe_finder*) ; 
 int /*<<< orphan*/  probe_point_line_walker ; 

__attribute__((used)) static int FUNC1(struct probe_finder *pf)
{
	return FUNC0(&pf->cu_die, probe_point_line_walker, pf);
}