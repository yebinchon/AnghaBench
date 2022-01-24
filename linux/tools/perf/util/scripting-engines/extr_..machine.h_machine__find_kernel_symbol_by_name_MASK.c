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
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct machine {int /*<<< orphan*/  kmaps; } ;

/* Variables and functions */
 struct symbol* FUNC0 (int /*<<< orphan*/ *,char const*,struct map**) ; 

__attribute__((used)) static inline
struct symbol *FUNC1(struct machine *machine,
						   const char *name,
						   struct map **mapp)
{
	return FUNC0(&machine->kmaps, name, mapp);
}