#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct map_symbol {struct map* map; } ;
struct map {int /*<<< orphan*/  (* map_ip ) (struct map*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ addr; int /*<<< orphan*/  sym; int /*<<< orphan*/ * name; } ;
struct ins_operands {char* raw; TYPE_2__ target; } ;
struct TYPE_3__ {char skip_functions_char; } ;
struct arch {TYPE_1__ objdump; } ;
struct addr_map_symbol {int /*<<< orphan*/  sym; int /*<<< orphan*/  addr; struct map* map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct map*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct map*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct addr_map_symbol*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct map*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct arch *arch, struct ins_operands *ops,
			    struct map_symbol *ms)
{
	char *endptr, *tok, *name;
	struct map *map = ms->map;
	struct addr_map_symbol target = {
		.map = map,
	};

	tok = FUNC3(ops->raw, ',');
	if (!tok)
		return -1;

	ops->target.addr = FUNC5(tok + 1, &endptr, 16);

	name = FUNC3(endptr, '<');
	if (name == NULL)
		return -1;

	name++;

	if (arch->objdump.skip_functions_char &&
	    FUNC3(name, arch->objdump.skip_functions_char))
		return -1;

	tok = FUNC3(name, '>');
	if (tok == NULL)
		return -1;

	*tok = '\0';
	ops->target.name = FUNC4(name);
	*tok = '>';

	if (ops->target.name == NULL)
		return -1;
	target.addr = FUNC0(map, ops->target.addr);

	if (FUNC2(&target) == 0 &&
	    FUNC1(target.map, map->map_ip(target.map, target.addr)) == ops->target.addr)
		ops->target.sym = target.sym;

	return 0;
}