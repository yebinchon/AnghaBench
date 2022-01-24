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
struct set_elem {int dummy; } ;
struct ip_set_ext {int /*<<< orphan*/  timeout; } ;
struct ip_set {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ip_set*) ; 
 scalar_t__ FUNC1 (struct ip_set*) ; 
 scalar_t__ FUNC2 (struct ip_set*) ; 
 scalar_t__ FUNC3 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct set_elem*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct set_elem*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct set_elem*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC7 (struct set_elem*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_set*,int /*<<< orphan*/ ,struct ip_set_ext const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ip_set_ext const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ip_set_ext const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct ip_set *set, const struct ip_set_ext *ext,
			 struct set_elem *e)
{
	if (FUNC1(set))
		FUNC9(FUNC5(e, set), ext);
	if (FUNC0(set))
		FUNC8(set, FUNC4(e, set), ext);
	if (FUNC2(set))
		FUNC10(FUNC6(e, set), ext);
	/* Update timeout last */
	if (FUNC3(set))
		FUNC11(FUNC7(e, set), ext->timeout);
}