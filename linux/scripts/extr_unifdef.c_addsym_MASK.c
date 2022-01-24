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

/* Variables and functions */
 scalar_t__ MAXSYMS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*) ; 
 int* ignore ; 
 scalar_t__ nsyms ; 
 char* FUNC3 (char*) ; 
 char** symname ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char** value ; 

__attribute__((used)) static void
FUNC5(bool ignorethis, bool definethis, char *sym)
{
	int symind;
	char *val;

	symind = FUNC2(sym);
	if (symind < 0) {
		if (nsyms >= MAXSYMS)
			FUNC1(2, "too many symbols");
		symind = nsyms++;
	}
	symname[symind] = sym;
	ignore[symind] = ignorethis;
	val = sym + (FUNC3(sym) - sym);
	if (definethis) {
		if (*val == '=') {
			value[symind] = val+1;
			*val = '\0';
		} else if (*val == '\0')
			value[symind] = "1";
		else
			FUNC4();
	} else {
		if (*val != '\0')
			FUNC4();
		value[symind] = NULL;
	}
	FUNC0("addsym %s=%s", symname[symind],
	    value[symind] ? value[symind] : "undef");
}