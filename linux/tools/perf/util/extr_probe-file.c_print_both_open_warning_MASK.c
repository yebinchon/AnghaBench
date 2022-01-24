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
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUP ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

__attribute__((used)) static void FUNC2(int kerr, int uerr)
{
	/* Both kprobes and uprobes are disabled, warn it. */
	if (kerr == -ENOTSUP && uerr == -ENOTSUP)
		FUNC0("Tracefs or debugfs is not mounted.\n");
	else if (kerr == -ENOENT && uerr == -ENOENT)
		FUNC0("Please rebuild kernel with CONFIG_KPROBE_EVENTS "
			   "or/and CONFIG_UPROBE_EVENTS.\n");
	else {
		char sbuf[STRERR_BUFSIZE];
		FUNC0("Failed to open kprobe events: %s.\n",
			   FUNC1(-kerr, sbuf, sizeof(sbuf)));
		FUNC0("Failed to open uprobe events: %s.\n",
			   FUNC1(-uerr, sbuf, sizeof(sbuf)));
	}
}