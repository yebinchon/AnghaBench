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
 scalar_t__ X86_FAMILY_ANY ; 
 scalar_t__ X86_FEATURE_ANY ; 
 scalar_t__ X86_MODEL_ANY ; 
 scalar_t__ X86_VENDOR_ANY ; 
 scalar_t__ family ; 
 scalar_t__ feature ; 
 scalar_t__ model ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ vendor ; 
 int /*<<< orphan*/  x86_cpu_id ; 

__attribute__((used)) static int FUNC6(const char *filename, void *symval,
			   char *alias)
{
	FUNC1(symval, x86_cpu_id, feature);
	FUNC1(symval, x86_cpu_id, family);
	FUNC1(symval, x86_cpu_id, model);
	FUNC1(symval, x86_cpu_id, vendor);

	FUNC4(alias, "cpu:type:x86,");
	FUNC0(alias, "ven", vendor != X86_VENDOR_ANY, vendor);
	FUNC0(alias, "fam", family != X86_FAMILY_ANY, family);
	FUNC0(alias, "mod", model  != X86_MODEL_ANY,  model);
	FUNC3(alias, ":feature:*");
	if (feature != X86_FEATURE_ANY)
		FUNC2(alias + FUNC5(alias), "%04X*", feature);
	return 1;
}