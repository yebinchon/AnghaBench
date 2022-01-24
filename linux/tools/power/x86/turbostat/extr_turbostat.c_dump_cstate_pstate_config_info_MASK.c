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
 int /*<<< orphan*/  do_nhm_platform_info ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC10 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC13 (unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC14(unsigned int family, unsigned int model)
{
	if (!do_nhm_platform_info)
		return;

	FUNC6();

	if (FUNC10(family, model))
		FUNC2();

	if (FUNC11(family, model))
		FUNC3();

	if (FUNC13(family, model))
		FUNC7(family, model);

	if (FUNC8(family, model))
		FUNC0();

	if (FUNC12(family, model))
		FUNC4();

	if (FUNC9(family, model))
		FUNC1();

	FUNC5();
}