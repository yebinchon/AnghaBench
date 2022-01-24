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
struct fdt_property {int /*<<< orphan*/  nameoff; } ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void const*,int) ; 
 struct fdt_property* FUNC2 (void const*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (void const*,int) ; 
 char* FUNC4 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const void *blob, int node)
{
	const struct fdt_property *data;
	const char *name;
	int prop;

	prop = FUNC1(blob, node);
	do {
		/* Stop silently when there are no more properties */
		if (prop < 0)
			return prop == -FDT_ERR_NOTFOUND ? 0 : prop;
		data = FUNC2(blob, prop, NULL);
		name = FUNC4(blob, FUNC0(data->nameoff));
		if (name)
			FUNC5(name);
		prop = FUNC3(blob, prop);
	} while (1);
}