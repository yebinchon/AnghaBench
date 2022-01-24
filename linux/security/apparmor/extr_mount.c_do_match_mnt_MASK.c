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
struct aa_perms {int allow; } ;
struct aa_dfa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AA_MAY_MOUNT ; 
 int AA_MNT_CONT_MATCH ; 
 unsigned int FUNC1 (struct aa_dfa*,unsigned int,void*) ; 
 unsigned int FUNC2 (struct aa_dfa*,unsigned int) ; 
 struct aa_perms FUNC3 (struct aa_dfa*,unsigned int) ; 
 unsigned int FUNC4 (struct aa_dfa*,unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct aa_dfa *dfa, unsigned int start,
			const char *mntpnt, const char *devname,
			const char *type, unsigned long flags,
			void *data, bool binary, struct aa_perms *perms)
{
	unsigned int state;

	FUNC0(!dfa);
	FUNC0(!perms);

	state = FUNC1(dfa, start, mntpnt);
	state = FUNC2(dfa, state);
	if (!state)
		return 1;

	if (devname)
		state = FUNC1(dfa, state, devname);
	state = FUNC2(dfa, state);
	if (!state)
		return 2;

	if (type)
		state = FUNC1(dfa, state, type);
	state = FUNC2(dfa, state);
	if (!state)
		return 3;

	state = FUNC4(dfa, state, flags);
	if (!state)
		return 4;
	*perms = FUNC3(dfa, state);
	if (perms->allow & AA_MAY_MOUNT)
		return 0;

	/* only match data if not binary and the DFA flags data is expected */
	if (data && !binary && (perms->allow & AA_MNT_CONT_MATCH)) {
		state = FUNC2(dfa, state);
		if (!state)
			return 4;

		state = FUNC1(dfa, state, data);
		if (!state)
			return 5;
		*perms = FUNC3(dfa, state);
		if (perms->allow & AA_MAY_MOUNT)
			return 0;
	}

	/* failed at end of flags match */
	return 4;
}