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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  results_map ; 

int FUNC1(struct pt_regs *ctx)
{
	const int key = 2, value = 3;

	FUNC0(&results_map, &key, &value, 0);
	return 0;
}