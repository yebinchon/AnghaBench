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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int product ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 
 int /*<<< orphan*/  ulpi_device_id ; 
 int vendor ; 

__attribute__((used)) static int FUNC2(const char *filename, void *symval,
			 char *alias)
{
	FUNC0(symval, ulpi_device_id, vendor);
	FUNC0(symval, ulpi_device_id, product);

	FUNC1(alias, "ulpi:v%04xp%04x", vendor, product);

	return 1;
}