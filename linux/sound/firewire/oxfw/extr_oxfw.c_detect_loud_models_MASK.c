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
typedef  int /*<<< orphan*/  model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  CSR_MODEL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char const* const*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC3(struct fw_unit *unit)
{
	const char *const models[] = {
		"Onyxi",
		"Onyx-i",
		"Onyx 1640i",
		"d.Pro",
		"Mackie Onyx Satellite",
		"Tapco LINK.firewire 4x6",
		"U.420"};
	char model[32];
	int err;

	err = FUNC1(unit->directory, CSR_MODEL,
			    model, sizeof(model));
	if (err < 0)
		return false;

	return FUNC2(models, FUNC0(models), model) >= 0;
}