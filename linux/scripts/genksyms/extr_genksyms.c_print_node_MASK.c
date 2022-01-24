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
struct string_list {size_t tag; int /*<<< orphan*/  string; } ;
struct TYPE_2__ {char n; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 TYPE_1__* symbol_types ; 

__attribute__((used)) static void FUNC2(FILE * f, struct string_list *list)
{
	if (symbol_types[list->tag].n) {
		FUNC1(symbol_types[list->tag].n, f);
		FUNC1('#', f);
	}
	FUNC0(list->string, f);
}