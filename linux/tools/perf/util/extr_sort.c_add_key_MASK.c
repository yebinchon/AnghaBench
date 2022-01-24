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

/* Variables and functions */
 int INDENT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(struct strbuf *sb, const char *str, int *llen)
{
	if (*llen >= 75) {
		FUNC1(sb, "\n\t\t\t ");
		*llen = INDENT;
	}
	FUNC0(sb, " %s", str);
	*llen += FUNC2(str) + 1;
}