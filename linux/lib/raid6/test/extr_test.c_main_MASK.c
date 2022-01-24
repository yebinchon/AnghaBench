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
struct raid6_recov_calls {char* name; int /*<<< orphan*/  datap; int /*<<< orphan*/  data2; int /*<<< orphan*/  (* valid ) () ;} ;
struct raid6_calls {int /*<<< orphan*/  (* xor_syndrome ) (int,int,int,int,void**) ;int /*<<< orphan*/  (* gen_syndrome ) (int,int,void**) ;int /*<<< orphan*/  (* valid ) () ;} ;

/* Variables and functions */
 int NDISKS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * data ; 
 int /*<<< orphan*/  dataptrs ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  raid6_2data_recov ; 
 struct raid6_calls** raid6_algos ; 
 struct raid6_calls raid6_call ; 
 int /*<<< orphan*/  raid6_datap_recov ; 
 struct raid6_recov_calls** raid6_recov_algos ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int,void**) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,void**) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,void**) ; 
 scalar_t__ FUNC9 (int,int) ; 

int FUNC10(int argc, char *argv[])
{
	const struct raid6_calls *const *algo;
	const struct raid6_recov_calls *const *ra;
	int i, j, p1, p2;
	int err = 0;

	FUNC0(0, NDISKS-1);

	for (ra = raid6_recov_algos; *ra; ra++) {
		if ((*ra)->valid  && !(*ra)->valid())
			continue;

		raid6_2data_recov = (*ra)->data2;
		raid6_datap_recov = (*ra)->datap;

		FUNC2("using recovery %s\n", (*ra)->name);

		for (algo = raid6_algos; *algo; algo++) {
			if ((*algo)->valid && !(*algo)->valid())
				continue;

			raid6_call = **algo;

			/* Nuke syndromes */
			FUNC1(data[NDISKS-2], 0xee, 2*PAGE_SIZE);

			/* Generate assumed good syndrome */
			raid6_call.gen_syndrome(NDISKS, PAGE_SIZE,
						(void **)&dataptrs);

			for (i = 0; i < NDISKS-1; i++)
				for (j = i+1; j < NDISKS; j++)
					err += FUNC9(i, j);

			if (!raid6_call.xor_syndrome)
				continue;

			for (p1 = 0; p1 < NDISKS-2; p1++)
				for (p2 = p1; p2 < NDISKS-2; p2++) {

					/* Simulate rmw run */
					raid6_call.xor_syndrome(NDISKS, p1, p2, PAGE_SIZE,
								(void **)&dataptrs);
					FUNC0(p1, p2);
					raid6_call.xor_syndrome(NDISKS, p1, p2, PAGE_SIZE,
                                                                (void **)&dataptrs);

					for (i = 0; i < NDISKS-1; i++)
						for (j = i+1; j < NDISKS; j++)
							err += FUNC9(i, j);
				}

		}
		FUNC2("\n");
	}

	FUNC2("\n");
	/* Pick the best algorithm test */
	FUNC3();

	if (err)
		FUNC2("\n*** ERRORS FOUND ***\n");

	return err;
}