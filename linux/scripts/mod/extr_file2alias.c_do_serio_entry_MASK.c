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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SERIO_ANY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ extra ; 
 scalar_t__ id ; 
 scalar_t__ proto ; 
 int /*<<< orphan*/  serio_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ type ; 

__attribute__((used)) static int FUNC4(const char *filename,
			  void *symval, char *alias)
{
	FUNC1(symval, serio_device_id, type);
	FUNC1(symval, serio_device_id, proto);
	FUNC1(symval, serio_device_id, id);
	FUNC1(symval, serio_device_id, extra);

	FUNC3(alias, "serio:");
	FUNC0(alias, "ty", type != SERIO_ANY, type);
	FUNC0(alias, "pr", proto != SERIO_ANY, proto);
	FUNC0(alias, "id", id != SERIO_ANY, id);
	FUNC0(alias, "ex", extra != SERIO_ANY, extra);

	FUNC2(alias);
	return 1;
}