#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ field; char* prefix; } ;
struct TYPE_5__ {scalar_t__ slot; int /*<<< orphan*/  substr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* dmi_fields ; 
 int /*<<< orphan*/  dmi_system_id ; 
 TYPE_1__** matches ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *filename, void *symval,
			char *alias)
{
	int i, j;
	FUNC1(symval, dmi_system_id, matches);
	FUNC3(alias, "dmi*");

	for (i = 0; i < FUNC0(dmi_fields); i++) {
		for (j = 0; j < 4; j++) {
			if ((*matches)[j].slot &&
			    (*matches)[j].slot == dmi_fields[i].field) {
				FUNC3(alias + FUNC5(alias), ":%s*",
					dmi_fields[i].prefix);
				FUNC2(alias + FUNC5(alias),
						 (*matches)[j].substr);
				FUNC4(alias, "*");
			}
		}
	}

	FUNC4(alias, ":");
	return 1;
}