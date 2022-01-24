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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  ranctx ;
typedef  scalar_t__ const_tree ;

/* Variables and functions */
 unsigned char* FUNC0 (scalar_t__) ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*) ; 
 scalar_t__ performance_mode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * shuffle_seed ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(const_tree type, tree *newtree, unsigned long length)
{
	unsigned long i;
	u64 seed[4];
	ranctx prng_state;
	const unsigned char *structname;

	if (length == 0)
		return;

	FUNC5(FUNC1(type) == RECORD_TYPE);

	structname = FUNC0(type);

#ifdef __DEBUG_PLUGIN
	fprintf(stderr, "Shuffling struct %s %p\n", (const char *)structname, type);
#ifdef __DEBUG_VERBOSE
	debug_tree((tree)type);
#endif
#endif

	for (i = 0; i < 4; i++) {
		seed[i] = shuffle_seed[i];
		seed[i] ^= FUNC6(structname);
	}

	FUNC8(&prng_state, (u64 *)&seed);

	if (performance_mode)
		FUNC7(newtree, length, &prng_state);
	else
		FUNC4(newtree, length, &prng_state);
}