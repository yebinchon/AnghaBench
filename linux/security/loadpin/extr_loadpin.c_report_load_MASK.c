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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*,char*,char*,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *origin, struct file *file, char *operation)
{
	char *cmdline, *pathname;

	pathname = FUNC2(file, GFP_KERNEL);
	cmdline = FUNC1(current, GFP_KERNEL);

	FUNC3("%s %s obj=%s%s%s pid=%d cmdline=%s%s%s\n",
		  origin, operation,
		  (pathname && pathname[0] != '<') ? "\"" : "",
		  pathname,
		  (pathname && pathname[0] != '<') ? "\"" : "",
		  FUNC4(current),
		  cmdline ? "\"" : "", cmdline, cmdline ? "\"" : "");

	FUNC0(cmdline);
	FUNC0(pathname);
}