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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int INDENT ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  bstack_sort_dimensions ; 
 int /*<<< orphan*/  common_sort_dimensions ; 
 int /*<<< orphan*/  hpp_sort_dimensions ; 
 int /*<<< orphan*/  memory_sort_dimensions ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int FUNC7 (char const*) ; 

const char *FUNC8(const char *prefix)
{
	struct strbuf sb;
	char *s;
	int len = FUNC7(prefix) + INDENT;

	FUNC5(&sb, 300);
	FUNC3(&sb, prefix);
	FUNC1(&sb, hpp_sort_dimensions,
			    FUNC0(hpp_sort_dimensions), &len);
	FUNC2(&sb, common_sort_dimensions,
			    FUNC0(common_sort_dimensions), &len);
	FUNC2(&sb, bstack_sort_dimensions,
			    FUNC0(bstack_sort_dimensions), &len);
	FUNC2(&sb, memory_sort_dimensions,
			    FUNC0(memory_sort_dimensions), &len);
	s = FUNC4(&sb, NULL);
	FUNC6(&sb);
	return s;
}