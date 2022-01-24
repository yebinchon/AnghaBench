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
struct scripting_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,struct scripting_ops*) ; 
 int /*<<< orphan*/ * scripting_context ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC4(struct scripting_ops *scripting_ops)
{
	if (scripting_context == NULL)
		scripting_context = FUNC0(sizeof(*scripting_context));

       if (scripting_context == NULL ||
	   FUNC2("Python", scripting_ops) ||
	   FUNC2("py", scripting_ops)) {
		FUNC1("Error registering Python script extension: disabling it\n");
		FUNC3(&scripting_context);
	}
}