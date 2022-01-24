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
struct fw_unit {int /*<<< orphan*/  directory; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_MODEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static bool
FUNC2(struct fw_unit *unit)
{
	char name[28] = {0};

	if (FUNC0(unit->directory, CSR_MODEL, name, sizeof(name)) < 0)
		return false;

	return FUNC1(name, "FW Audiophile Bootloader", 24) != 0;
}