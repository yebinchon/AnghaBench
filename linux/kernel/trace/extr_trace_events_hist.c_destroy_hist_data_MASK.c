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
struct hist_trigger_data {int /*<<< orphan*/  map; int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hist_trigger_data *hist_data)
{
	if (!hist_data)
		return;

	FUNC4(hist_data->attrs);
	FUNC3(hist_data);
	FUNC6(hist_data->map);

	FUNC0(hist_data);
	FUNC2(hist_data);
	FUNC1(hist_data);

	FUNC5(hist_data);
}