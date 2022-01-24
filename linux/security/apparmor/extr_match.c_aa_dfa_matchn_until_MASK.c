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
typedef  scalar_t__ u32 ;
typedef  unsigned int u16 ;
struct aa_dfa {scalar_t__* tables; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct aa_dfa*) ; 
 scalar_t__* FUNC1 (struct aa_dfa*) ; 
 unsigned int* FUNC2 (struct aa_dfa*) ; 
 unsigned int* FUNC3 (struct aa_dfa*) ; 
 size_t* FUNC4 (struct aa_dfa*) ; 
 unsigned int* FUNC5 (struct aa_dfa*) ; 
 size_t YYTD_ID_EC ; 
 size_t FUNC6 (scalar_t__) ; 

unsigned int FUNC7(struct aa_dfa *dfa, unsigned int start,
				 const char *str, int n, const char **retpos)
{
	u16 *def = FUNC3(dfa);
	u32 *base = FUNC1(dfa);
	u16 *next = FUNC5(dfa);
	u16 *check = FUNC2(dfa);
	u32 *accept = FUNC0(dfa);
	unsigned int state = start, pos;

	*retpos = NULL;
	if (state == 0)
		return 0;

	/* current state is <state>, matching character *str */
	if (dfa->tables[YYTD_ID_EC]) {
		/* Equivalence class table defined */
		u8 *equiv = FUNC4(dfa);
		/* default is direct to next state */
		for (; n; n--) {
			pos = FUNC6(base[state]) + equiv[(u8) *str++];
			if (check[pos] == state)
				state = next[pos];
			else
				state = def[state];
			if (accept[state])
				break;
		}
	} else {
		/* default is direct to next state */
		for (; n; n--) {
			pos = FUNC6(base[state]) + (u8) *str++;
			if (check[pos] == state)
				state = next[pos];
			else
				state = def[state];
			if (accept[state])
				break;
		}
	}

	*retpos = str;
	return state;
}