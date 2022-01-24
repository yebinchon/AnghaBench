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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(const char *ppath, const char *cpath)
{
	int plen;

	plen = FUNC2(ppath);

	if (!FUNC3(cpath, ppath))
		FUNC0("Path \"%s\" is not valid as a child of \"%s\"\n",
		    cpath, ppath);

	/* root node is a special case */
	if (!FUNC1(ppath, "/"))
		plen++;

	return FUNC4(cpath + plen);
}