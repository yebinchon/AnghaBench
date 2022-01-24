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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFA_START ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  stacksplitdfa ; 

__attribute__((used)) static inline const char *FUNC2(const char *str)
{
	const char *pos;
	unsigned int state;

	state = FUNC1(stacksplitdfa, DFA_START, str, &pos);
	if (!FUNC0(stacksplitdfa)[state])
		return NULL;

	return pos - 3;
}