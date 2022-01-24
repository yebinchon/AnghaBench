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
typedef  enum export { ____Placeholder_export } export ;

/* Variables and functions */
#define  export_unused 129 
#define  export_unused_gpl 128 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC2(enum export exp, const char *m, const char *s)
{
	const char *e = FUNC0(m) ?"":".ko";

	switch (exp) {
	case export_unused:
	case export_unused_gpl:
		FUNC1("modpost: module %s%s "
		      "uses symbol '%s' marked UNUSED\n", m, e, s);
		break;
	default:
		/* ignore */
		break;
	}
}