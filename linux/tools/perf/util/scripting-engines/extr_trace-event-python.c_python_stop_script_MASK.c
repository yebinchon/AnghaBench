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
struct tables {int /*<<< orphan*/  dbe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_dict ; 
 int /*<<< orphan*/  main_module ; 
 struct tables tables_global ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct tables *tables = &tables_global;

	FUNC3("trace_end", NULL);

	FUNC2(&tables->dbe);

	FUNC1(main_dict);
	FUNC1(main_module);
	FUNC0();

	return 0;
}