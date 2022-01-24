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
struct strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct strbuf*,char*,int) ; 
 int FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 

int FUNC5(Dwarf_Die *vr_die, struct strbuf *buf)
{
	int ret;

	ret = FUNC0(vr_die, buf);
	if (ret < 0) {
		FUNC2("Failed to get type, make it unknown.\n");
		ret = FUNC3(buf, " (unknown_type)", 14);
	}

	return ret < 0 ? ret : FUNC4(buf, "\t%s", FUNC1(vr_die));
}