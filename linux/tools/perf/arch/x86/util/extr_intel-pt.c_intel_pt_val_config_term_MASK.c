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
typedef  int /*<<< orphan*/  valid_str ;
typedef  int u64 ;
struct perf_pmu {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTEL_PT_PMU_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (struct perf_pmu*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct perf_pmu *intel_pt_pmu,
				    const char *caps, const char *name,
				    const char *supported, u64 config)
{
	char valid_str[256];
	unsigned int shift;
	unsigned long long valid;
	u64 bits;
	int ok;

	if (FUNC2(intel_pt_pmu, caps, "%llx", &valid) != 1)
		valid = 0;

	if (supported &&
	    FUNC2(intel_pt_pmu, supported, "%d", &ok) == 1 && !ok)
		valid = 0;

	valid |= 1;

	bits = FUNC1(&intel_pt_pmu->format, name);

	config &= bits;

	for (shift = 0; bits && !(bits & 1); shift++)
		bits >>= 1;

	config >>= shift;

	if (config > 63)
		goto out_err;

	if (valid & (1 << config))
		return 0;
out_err:
	FUNC0(valid_str, sizeof(valid_str), valid);
	FUNC3("Invalid %s for %s. Valid values are: %s\n",
	       name, INTEL_PT_PMU_NAME, valid_str);
	return -EINVAL;
}