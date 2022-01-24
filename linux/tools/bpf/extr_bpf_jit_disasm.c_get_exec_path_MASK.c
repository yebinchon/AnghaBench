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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 size_t FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(char *tpath, size_t size)
{
	char *path;
	ssize_t len;

	FUNC4(tpath, size, "/proc/%d/exe", (int) FUNC2());
	tpath[size - 1] = 0;

	path = FUNC5(tpath);
	FUNC0(path);

	len = FUNC3(path, tpath, size);
	tpath[len] = 0;

	FUNC1(path);
}