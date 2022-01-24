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
 scalar_t__ BCMA_ANY_CLASS ; 
 scalar_t__ BCMA_ANY_ID ; 
 scalar_t__ BCMA_ANY_MANUF ; 
 scalar_t__ BCMA_ANY_REV ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  bcma_device_id ; 
 scalar_t__ class ; 
 scalar_t__ id ; 
 scalar_t__ manuf ; 
 scalar_t__ rev ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			 void *symval, char *alias)
{
	FUNC1(symval, bcma_device_id, manuf);
	FUNC1(symval, bcma_device_id, id);
	FUNC1(symval, bcma_device_id, rev);
	FUNC1(symval, bcma_device_id, class);

	FUNC3(alias, "bcma:");
	FUNC0(alias, "m", manuf != BCMA_ANY_MANUF, manuf);
	FUNC0(alias, "id", id != BCMA_ANY_ID, id);
	FUNC0(alias, "rev", rev != BCMA_ANY_REV, rev);
	FUNC0(alias, "cl", class != BCMA_ANY_CLASS, class);
	FUNC2(alias);
	return 1;
}