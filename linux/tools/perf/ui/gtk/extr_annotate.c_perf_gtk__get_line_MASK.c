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
struct TYPE_2__ {scalar_t__ offset; int /*<<< orphan*/  line; } ;
struct disasm_line {TYPE_1__ al; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(char *buf, size_t size, struct disasm_line *dl)
{
	int ret = 0;
	char *line = FUNC1(dl->al.line, -1);
	const char *markup = "<span fgcolor='gray'>";

	FUNC3(buf, "");

	if (!line)
		return 0;

	if (dl->al.offset != (s64) -1)
		markup = NULL;

	if (markup)
		ret += FUNC2(buf, size, "%s", markup);
	ret += FUNC2(buf + ret, size - ret, "%s", line);
	if (markup)
		ret += FUNC2(buf + ret, size - ret, "</span>");

	FUNC0(line);
	return ret;
}