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
struct cpufreq_policy {char* governor; void* max; void* min; } ;
struct cpufreq_affected_cpus {int /*<<< orphan*/  cpu; struct cpufreq_affected_cpus* next; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpufreq_affected_cpus* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct cpufreq_affected_cpus*) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  cpus_chosen ; 
 int FUNC10 (unsigned int,struct cpufreq_policy*,unsigned long,int) ; 
 int FUNC11 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  set_opts ; 
 int FUNC15 (char*,char*,char*) ; 
 void* FUNC16 (char*) ; 
 int FUNC17 (char*) ; 

int FUNC18(int argc, char **argv)
{
	extern char *optarg;
	extern int optind, opterr, optopt;
	int ret = 0, cont = 1;
	int double_parm = 0, related = 0, policychange = 0;
	unsigned long freq = 0;
	char gov[20];
	unsigned int cpu;

	struct cpufreq_policy new_pol = {
		.min = 0,
		.max = 0,
		.governor = NULL,
	};

	/* parameter parsing */
	do {
		ret = FUNC11(argc, argv, "d:u:g:f:r", set_opts, NULL);
		switch (ret) {
		case '?':
			FUNC13();
			return -EINVAL;
		case -1:
			cont = 0;
			break;
		case 'r':
			if (related)
				double_parm++;
			related++;
			break;
		case 'd':
			if (new_pol.min)
				double_parm++;
			policychange++;
			new_pol.min = FUNC16(optarg);
			if (new_pol.min == 0) {
				FUNC13();
				return -EINVAL;
			}
			break;
		case 'u':
			if (new_pol.max)
				double_parm++;
			policychange++;
			new_pol.max = FUNC16(optarg);
			if (new_pol.max == 0) {
				FUNC13();
				return -EINVAL;
			}
			break;
		case 'f':
			if (freq)
				double_parm++;
			freq = FUNC16(optarg);
			if (freq == 0) {
				FUNC13();
				return -EINVAL;
			}
			break;
		case 'g':
			if (new_pol.governor)
				double_parm++;
			policychange++;
			if ((FUNC17(optarg) < 3) || (FUNC17(optarg) > 18)) {
				FUNC13();
				return -EINVAL;
			}
			if ((FUNC15(optarg, "%19s", gov)) != 1) {
				FUNC13();
				return -EINVAL;
			}
			new_pol.governor = gov;
			break;
		}
	} while (cont);

	/* parameter checking */
	if (double_parm) {
		FUNC14("the same parameter was passed more than once\n");
		return -EINVAL;
	}

	if (freq && policychange) {
		FUNC14(FUNC0("the -f/--freq parameter cannot be combined with -d/--min, -u/--max or\n"
				"-g/--governor parameters\n"));
		return -EINVAL;
	}

	if (!freq && !policychange) {
		FUNC14(FUNC0("At least one parameter out of -f/--freq, -d/--min, -u/--max, and\n"
				"-g/--governor must be passed\n"));
		return -EINVAL;
	}

	/* Default is: set all CPUs */
	if (FUNC2(cpus_chosen))
		FUNC5(cpus_chosen);

	/* Also set frequency settings for related CPUs if -r is passed */
	if (related) {
		for (cpu = FUNC1(cpus_chosen);
		     cpu <= FUNC4(cpus_chosen); cpu++) {
			struct cpufreq_affected_cpus *cpus;

			if (!FUNC3(cpus_chosen, cpu) ||
			    FUNC9(cpu) != 1)
				continue;

			cpus = FUNC7(cpu);
			if (!cpus)
				break;
			while (cpus->next) {
				FUNC6(cpus_chosen, cpus->cpu);
				cpus = cpus->next;
			}
			/* Set the last cpu in related cpus list */
			FUNC6(cpus_chosen, cpus->cpu);
			FUNC8(cpus);
		}
	}


	/* loop over CPUs */
	for (cpu = FUNC1(cpus_chosen);
	     cpu <= FUNC4(cpus_chosen); cpu++) {

		if (!FUNC3(cpus_chosen, cpu) ||
		    FUNC9(cpu) != 1)
			continue;

		FUNC14(FUNC0("Setting cpu: %d\n"), cpu);
		ret = FUNC10(cpu, &new_pol, freq, policychange);
		if (ret) {
			FUNC12();
			return ret;
		}
	}

	return 0;
}