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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("Usage: fds_example [...]\n");
	FUNC0("       -F <file>   File to pin/get object\n");
	FUNC0("       -P          |- pin object\n");
	FUNC0("       -G          `- get object\n");
	FUNC0("       -m          eBPF map mode\n");
	FUNC0("       -k <key>    |- map key\n");
	FUNC0("       -v <value>  `- map value\n");
	FUNC0("       -p          eBPF prog mode\n");
	FUNC0("       -o <object> `- object file\n");
	FUNC0("       -h          Display this help.\n");
}