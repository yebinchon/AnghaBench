#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_frequencies {int /*<<< orphan*/  frequency; struct cpufreq_frequencies* next; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;

/* Variables and functions */
 scalar_t__ X86_VENDOR_AMD ; 
 scalar_t__ X86_VENDOR_HYGON ; 
 scalar_t__ X86_VENDOR_INTEL ; 
 char* FUNC0 (char*) ; 
 struct cpufreq_frequencies* FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_frequencies*) ; 
 TYPE_1__ cpupower_cpu_info ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	struct cpufreq_frequencies *freqs;

	if (cpupower_cpu_info.vendor == X86_VENDOR_AMD ||
	    cpupower_cpu_info.vendor == X86_VENDOR_HYGON ||
	    cpupower_cpu_info.vendor == X86_VENDOR_INTEL)
		return FUNC3(cpu);

	freqs = FUNC1("boost", cpu);
	if (freqs) {
		FUNC5(FUNC0("  boost frequency steps: "));
		while (freqs->next) {
			FUNC4(freqs->frequency);
			FUNC5(", ");
			freqs = freqs->next;
		}
		FUNC4(freqs->frequency);
		FUNC5("\n");
		FUNC2(freqs);
	}

	return 0;
}