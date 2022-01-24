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
struct intel_pt {int /*<<< orphan*/  mispred_all; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *var, const char *value, void *data)
{
	struct intel_pt *pt = data;

	if (!FUNC1(var, "intel-pt.mispred-all"))
		pt->mispred_all = FUNC0(var, value);

	return 0;
}