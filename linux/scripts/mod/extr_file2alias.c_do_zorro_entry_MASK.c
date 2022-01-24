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
 scalar_t__ ZORRO_WILDCARD ; 
 scalar_t__ id ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  zorro_device_id ; 

__attribute__((used)) static int FUNC3(const char *filename, void *symval,
			  char *alias)
{
	FUNC1(symval, zorro_device_id, id);
	FUNC2(alias, "zorro:");
	FUNC0(alias, "i", id != ZORRO_WILDCARD, id);
	return 1;
}