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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct aa_dfa {scalar_t__* tables; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct aa_dfa*) ; 
 int /*<<< orphan*/ * FUNC1 (struct aa_dfa*) ; 
 int /*<<< orphan*/ * FUNC2 (struct aa_dfa*) ; 
 size_t* FUNC3 (struct aa_dfa*) ; 
 int /*<<< orphan*/ * FUNC4 (struct aa_dfa*) ; 
 size_t YYTD_ID_EC ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

unsigned int FUNC6(struct aa_dfa *dfa, unsigned int start,
			      const char *str, int len)
{
	u16 *def = FUNC2(dfa);
	u32 *base = FUNC0(dfa);
	u16 *next = FUNC4(dfa);
	u16 *check = FUNC1(dfa);
	unsigned int state = start;

	if (state == 0)
		return 0;

	/* current state is <state>, matching character *str */
	if (dfa->tables[YYTD_ID_EC]) {
		/* Equivalence class table defined */
		u8 *equiv = FUNC3(dfa);
		for (; len; len--)
			FUNC5(state, def, base, next, check,
				   equiv[(u8) *str++]);
	} else {
		/* default is direct to next state */
		for (; len; len--)
			FUNC5(state, def, base, next, check, (u8) *str++);
	}

	return state;
}