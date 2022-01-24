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
struct symbol {char* name; int /*<<< orphan*/  start; } ;
struct map {unsigned long long (* unmap_ip ) (struct map*,int /*<<< orphan*/ ) ;TYPE_1__* dso; } ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ short_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct map*) ; 
 struct symbol* FUNC1 (struct machine*,unsigned long long,struct map**) ; 
 unsigned long long FUNC2 (struct map*,int /*<<< orphan*/ ) ; 

char *FUNC3(void *vmachine, unsigned long long *addrp, char **modp)
{
	struct machine *machine = vmachine;
	struct map *map;
	struct symbol *sym = FUNC1(machine, *addrp, &map);

	if (sym == NULL)
		return NULL;

	*modp = FUNC0(map) ? (char *)map->dso->short_name : NULL;
	*addrp = map->unmap_ip(map, sym->start);
	return sym->name;
}