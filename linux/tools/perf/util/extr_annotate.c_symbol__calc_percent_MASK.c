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
struct evsel {int dummy; } ;
struct annotation {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct annotation*,struct evsel*,int /*<<< orphan*/ ) ; 
 struct annotation* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 

void FUNC3(struct symbol *sym, struct evsel *evsel)
{
	struct annotation *notes = FUNC1(sym);

	FUNC0(notes, evsel, FUNC2(sym));
}