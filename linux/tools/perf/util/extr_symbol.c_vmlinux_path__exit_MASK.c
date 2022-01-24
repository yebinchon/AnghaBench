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
 int /*<<< orphan*/ ***** vmlinux_path ; 
 scalar_t__ vmlinux_path__nr_entries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 

__attribute__((used)) static void FUNC1(void)
{
	while (--vmlinux_path__nr_entries >= 0)
		FUNC0(&vmlinux_path[vmlinux_path__nr_entries]);
	vmlinux_path__nr_entries = 0;

	FUNC0(&vmlinux_path);
}