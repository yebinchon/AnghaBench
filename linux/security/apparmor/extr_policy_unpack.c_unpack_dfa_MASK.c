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
struct aa_ext {int start; int pos; } ;
struct aa_dfa {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int DFA_FLAG_VERIFY_STATES ; 
 scalar_t__ FUNC1 (struct aa_dfa*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YYTD_DATA32 ; 
 struct aa_dfa* FUNC4 (char*,size_t,int) ; 
 size_t FUNC5 (struct aa_ext*,char**,char*) ; 

__attribute__((used)) static struct aa_dfa *FUNC6(struct aa_ext *e)
{
	char *blob = NULL;
	size_t size;
	struct aa_dfa *dfa = NULL;

	size = FUNC5(e, &blob, "aadfa");
	if (size) {
		/*
		 * The dfa is aligned with in the blob to 8 bytes
		 * from the beginning of the stream.
		 * alignment adjust needed by dfa unpack
		 */
		size_t sz = blob - (char *) e->start -
			((e->pos - e->start) & 7);
		size_t pad = FUNC0(sz, 8) - sz;
		int flags = FUNC2(YYTD_DATA32) |
			FUNC3(YYTD_DATA32) | DFA_FLAG_VERIFY_STATES;
		dfa = FUNC4(blob + pad, size - pad, flags);

		if (FUNC1(dfa))
			return dfa;

	}

	return dfa;
}