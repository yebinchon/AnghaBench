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
struct popup_action {int /*<<< orphan*/  fn; } ;
struct hist_browser {int /*<<< orphan*/  hbt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*) ; 
 int /*<<< orphan*/  do_switch_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct hist_browser *browser,
	       struct popup_action *act, char **optstr)
{
	if (!FUNC1(browser->hbt))
		return 0;

	if (FUNC0(optstr, "Switch to another data file in PWD") < 0)
		return 0;

	act->fn = do_switch_data;
	return 1;
}