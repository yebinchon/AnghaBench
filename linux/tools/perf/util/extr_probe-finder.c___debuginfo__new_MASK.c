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
struct debuginfo {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct debuginfo*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct debuginfo* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct debuginfo**) ; 

__attribute__((used)) static struct debuginfo *FUNC4(const char *path)
{
	struct debuginfo *dbg = FUNC2(sizeof(*dbg));
	if (!dbg)
		return NULL;

	if (FUNC0(dbg, path) < 0)
		FUNC3(&dbg);
	if (dbg)
		FUNC1("Open Debuginfo file: %s\n", path);
	return dbg;
}