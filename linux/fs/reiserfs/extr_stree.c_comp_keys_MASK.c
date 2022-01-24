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
struct reiserfs_key {int dummy; } ;
struct cpu_key {int key_length; } ;

/* Variables and functions */
 int FUNC0 (struct reiserfs_key const*,struct cpu_key const*) ; 
 scalar_t__ FUNC1 (struct cpu_key const*) ; 
 scalar_t__ FUNC2 (struct cpu_key const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct reiserfs_key const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct reiserfs_key const*) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_key const*) ; 

__attribute__((used)) static inline int FUNC6(const struct reiserfs_key *le_key,
			    const struct cpu_key *cpu_key)
{
	int retval;

	retval = FUNC0(le_key, cpu_key);
	if (retval)
		return retval;
	if (FUNC3(FUNC5(le_key), le_key) <
	    FUNC1(cpu_key))
		return -1;
	if (FUNC3(FUNC5(le_key), le_key) >
	    FUNC1(cpu_key))
		return 1;

	if (cpu_key->key_length == 3)
		return 0;

	/* this part is needed only when tail conversion is in progress */
	if (FUNC4(FUNC5(le_key), le_key) <
	    FUNC2(cpu_key))
		return -1;

	if (FUNC4(FUNC5(le_key), le_key) >
	    FUNC2(cpu_key))
		return 1;

	return 0;
}