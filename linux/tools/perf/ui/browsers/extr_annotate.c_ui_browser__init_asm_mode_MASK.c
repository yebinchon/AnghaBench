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
struct ui_browser {int /*<<< orphan*/  nr_entries; } ;
struct annotation {int /*<<< orphan*/  nr_asm_entries; } ;

/* Variables and functions */
 struct annotation* FUNC0 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*) ; 

__attribute__((used)) static void FUNC2(struct ui_browser *browser)
{
	struct annotation *notes = FUNC0(browser);
	FUNC1(browser);
	browser->nr_entries = notes->nr_asm_entries;
}