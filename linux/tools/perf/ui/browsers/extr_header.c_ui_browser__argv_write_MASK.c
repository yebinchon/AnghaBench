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
struct ui_browser {int /*<<< orphan*/  width; scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_NORMAL ; 
 int /*<<< orphan*/  HE_COLORSET_SELECTED ; 
 unsigned long FUNC0 (char*) ; 
 int FUNC1 (struct ui_browser*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_browser*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ui_browser *browser,
				   void *entry, int row)
{
	char **arg = entry;
	char *str = *arg;
	char empty[] = " ";
	bool current_entry = FUNC1(browser, row);
	unsigned long offset = (unsigned long)browser->priv;

	if (offset >= FUNC0(str))
		str = empty;
	else
		str = str + offset;

	FUNC2(browser, current_entry ? HE_COLORSET_SELECTED :
						       HE_COLORSET_NORMAL);

	FUNC3(browser, str, browser->width);
}