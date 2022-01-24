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
struct aa_dfa {int /*<<< orphan*/ ** tables; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_dfa*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct aa_dfa *dfa)
{
	if (dfa) {
		int i;

		for (i = 0; i < FUNC0(dfa->tables); i++) {
			FUNC2(dfa->tables[i]);
			dfa->tables[i] = NULL;
		}
		FUNC1(dfa);
	}
}