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
struct menu {int dummy; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  main_window ; 
 int /*<<< orphan*/  FUNC0 (struct menu*,struct gstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct gstr*) ; 
 struct gstr FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct menu *menu)
{
	struct gstr help;

	if (!menu)
		return;

	help = FUNC5();
	FUNC0(menu, &help);
	FUNC2(main_window, FUNC1(menu), FUNC4(&help));
	FUNC3(&help);
}