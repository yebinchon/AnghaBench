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
struct symbol {int /*<<< orphan*/ * name; } ;
struct addr_location {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct symbol*,struct addr_location*) ; 
 int FUNC1 (char*,int,char*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct symbol *sym, struct addr_location *al,
		      bool print_off, char *bf, int size)
{
	unsigned long offset;

	if (!sym || !sym->name[0])
		return FUNC1(bf, size, "%s", "[unknown]");

	if (!print_off)
		return FUNC1(bf, size, "%s", sym->name);

	offset = FUNC0(sym, al);

	return FUNC1(bf, size, "%s+0x%x", sym->name, offset);
}