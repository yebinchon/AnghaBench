#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct symbol {int /*<<< orphan*/  rb_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  top_idx; int /*<<< orphan*/  index; int /*<<< orphan*/ * top; } ;
struct map_browser {TYPE_1__ b; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int K_ENTER ; 
 struct symbol* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct symbol*) ; 
 char FUNC4 (char) ; 
 int FUNC5 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct map_browser *browser)
{
	char target[512];
	struct symbol *sym;
	int err = FUNC5("Search by name/addr",
					   "Prefix with 0x to search by address",
					   target, "ENTER: OK, ESC: Cancel", 0);
	if (err != K_ENTER)
		return -1;

	if (target[0] == '0' && FUNC4(target[1]) == 'x') {
		u64 addr = FUNC2(target, NULL, 16);
		sym = FUNC0(browser->map, addr);
	} else
		sym = FUNC1(browser->map, target);

	if (sym != NULL) {
		u32 *idx = FUNC3(sym);

		browser->b.top = &sym->rb_node;
		browser->b.index = browser->b.top_idx = *idx;
	} else
		FUNC6("%s not found!", target);

	return 0;
}