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
struct TYPE_2__ {int /*<<< orphan*/  uprobe_name; int /*<<< orphan*/ * sdt_name; } ;

/* Variables and functions */
 TYPE_1__* sdt_reg_tbl ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void FUNC3(char *sdt_reg, int sdt_len, char *uprobe_reg)
{
	int i = 0;

	for (i = 0; sdt_reg_tbl[i].sdt_name != NULL; i++) {
		if (!FUNC1(sdt_reg_tbl[i].sdt_name, sdt_reg, sdt_len)) {
			FUNC0(uprobe_reg, sdt_reg_tbl[i].uprobe_name);
			return;
		}
	}

	FUNC2(uprobe_reg, sdt_reg, sdt_len);
}