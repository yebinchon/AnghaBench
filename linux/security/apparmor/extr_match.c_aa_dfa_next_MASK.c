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

unsigned int FUNC6(struct aa_dfa *dfa, unsigned int state,
			  const char c)
{
	u16 *def = FUNC2(dfa);
	u32 *base = FUNC0(dfa);
	u16 *next = FUNC4(dfa);
	u16 *check = FUNC1(dfa);

	/* current state is <state>, matching character *str */
	if (dfa->tables[YYTD_ID_EC]) {
		/* Equivalence class table defined */
		u8 *equiv = FUNC3(dfa);
		FUNC5(state, def, base, next, check, equiv[(u8) c]);
	} else
		FUNC5(state, def, base, next, check, (u8) c);

	return state;
}