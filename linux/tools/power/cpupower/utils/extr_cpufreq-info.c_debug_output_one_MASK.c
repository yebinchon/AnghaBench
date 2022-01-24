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
struct cpufreq_frequencies {int /*<<< orphan*/  frequency; struct cpufreq_frequencies* next; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 struct cpufreq_frequencies* FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_frequencies*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(unsigned int cpu)
{
	struct cpufreq_frequencies *freqs;

	FUNC6(cpu);
	FUNC12(cpu);
	FUNC3(cpu);
	FUNC10(cpu, 1);
	FUNC9(cpu, 1);

	freqs = FUNC1("available", cpu);
	if (freqs) {
		FUNC14(FUNC0("  available frequency steps:  "));
		while (freqs->next) {
			FUNC13(freqs->frequency);
			FUNC14(", ");
			freqs = freqs->next;
		}
		FUNC13(freqs->frequency);
		FUNC14("\n");
		FUNC2(freqs);
	}

	FUNC4(cpu);
	FUNC11(cpu);
	if (FUNC7(cpu, 1) < 0)
		FUNC8(cpu, 1);
	FUNC5(cpu);
}