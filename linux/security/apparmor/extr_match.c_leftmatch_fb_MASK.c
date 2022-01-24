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
typedef  unsigned int u16 ;
struct match_workbuf {unsigned int* history; size_t pos; } ;
struct aa_dfa {scalar_t__* tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct aa_dfa*) ; 
 unsigned int* FUNC2 (struct aa_dfa*) ; 
 unsigned int* FUNC3 (struct aa_dfa*) ; 
 size_t* FUNC4 (struct aa_dfa*) ; 
 unsigned int* FUNC5 (struct aa_dfa*) ; 
 size_t YYTD_ID_EC ; 
 unsigned int FUNC6 (struct aa_dfa*,unsigned int,char const*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct match_workbuf*) ; 
 scalar_t__ FUNC9 (struct match_workbuf*,unsigned int,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC10(struct aa_dfa *dfa, unsigned int start,
				 const char *str, struct match_workbuf *wb,
				 unsigned int *count)
{
	u16 *def = FUNC3(dfa);
	u32 *base = FUNC1(dfa);
	u16 *next = FUNC5(dfa);
	u16 *check = FUNC2(dfa);
	unsigned int state = start, pos;

	FUNC0(!dfa);
	FUNC0(!str);
	FUNC0(!wb);
	FUNC0(!count);

	*count = 0;
	if (state == 0)
		return 0;

	/* current state is <state>, matching character *str */
	if (dfa->tables[YYTD_ID_EC]) {
		/* Equivalence class table defined */
		u8 *equiv = FUNC4(dfa);
		/* default is direct to next state */
		while (*str) {
			unsigned int adjust;

			wb->history[wb->pos] = state;
			pos = FUNC7(base[state]) + equiv[(u8) *str++];
			if (check[pos] == state)
				state = next[pos];
			else
				state = def[state];
			if (FUNC9(wb, state, &adjust)) {
				state = FUNC6(dfa, state, str);
				*count -= adjust;
				goto out;
			}
			FUNC8(wb);
			(*count)++;
		}
	} else {
		/* default is direct to next state */
		while (*str) {
			unsigned int adjust;

			wb->history[wb->pos] = state;
			pos = FUNC7(base[state]) + (u8) *str++;
			if (check[pos] == state)
				state = next[pos];
			else
				state = def[state];
			if (FUNC9(wb, state, &adjust)) {
				state = FUNC6(dfa, state, str);
				*count -= adjust;
				goto out;
			}
			FUNC8(wb);
			(*count)++;
		}
	}

out:
	if (!state)
		*count = 0;
	return state;
}