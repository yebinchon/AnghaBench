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
struct module {int /*<<< orphan*/  dev_table_buf; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  acpi_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char**) ; 
 unsigned long SIZE_pnp_device_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long const,void*) ; 
 char** id ; 
 int /*<<< orphan*/  pnp_device_id ; 
 char FUNC3 (char) ; 

__attribute__((used)) static void FUNC4(void *symval, unsigned long size,
				struct module *mod)
{
	const unsigned long id_size = SIZE_pnp_device_id;
	const unsigned int count = (size / id_size)-1;
	unsigned int i;

	FUNC2(mod->name, "pnp", size, id_size, symval);

	for (i = 0; i < count; i++) {
		FUNC0(symval + i*id_size, pnp_device_id, id);
		char acpi_id[sizeof(*id)];
		int j;

		FUNC1(&mod->dev_table_buf,
			   "MODULE_ALIAS(\"pnp:d%s*\");\n", *id);

		/* fix broken pnp bus lowercasing */
		for (j = 0; j < sizeof(acpi_id); j++)
			acpi_id[j] = FUNC3((*id)[j]);
		FUNC1(&mod->dev_table_buf,
			   "MODULE_ALIAS(\"acpi*:%s:*\");\n", acpi_id);
	}
}