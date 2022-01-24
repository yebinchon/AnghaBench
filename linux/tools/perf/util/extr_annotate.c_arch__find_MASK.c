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
struct arch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arch__key_cmp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  architectures ; 
 struct arch* FUNC2 (char const*,int /*<<< orphan*/ ,int const,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct arch *FUNC3(const char *name)
{
	const int nmemb = FUNC0(architectures);
	static bool sorted;

	if (!sorted) {
		FUNC1();
		sorted = true;
	}

	return FUNC2(name, architectures, nmemb, sizeof(struct arch), arch__key_cmp);
}