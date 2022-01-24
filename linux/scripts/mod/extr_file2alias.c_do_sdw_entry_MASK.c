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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ mfg_id ; 
 scalar_t__ part_id ; 
 int /*<<< orphan*/  sdw_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename, void *symval, char *alias)
{
	FUNC1(symval, sdw_device_id, mfg_id);
	FUNC1(symval, sdw_device_id, part_id);

	FUNC3(alias, "sdw:");
	FUNC0(alias, "m", mfg_id != 0, mfg_id);
	FUNC0(alias, "p", part_id != 0, part_id);

	FUNC2(alias);
	return 1;
}