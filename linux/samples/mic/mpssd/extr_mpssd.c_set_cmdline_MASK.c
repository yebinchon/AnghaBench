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
struct mic_info {int id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static void
FUNC3(struct mic_info *mic)
{
	char buffer[PATH_MAX];
	int len;

	len = FUNC2(buffer, PATH_MAX,
		"clocksource=tsc highres=off nohz=off ");
	len += FUNC2(buffer + len, PATH_MAX - len,
		"cpufreq_on;corec6_off;pc3_off;pc6_off ");
	len += FUNC2(buffer + len, PATH_MAX - len,
		"ifcfg=static;address,172.31.%d.1;netmask,255.255.255.0",
		mic->id + 1);

	FUNC1(mic->name, "cmdline", buffer);
	FUNC0("%s: Command line: \"%s\"\n", mic->name, buffer);
	FUNC2(buffer, PATH_MAX, "172.31.%d.1", mic->id + 1);
	FUNC0("%s: IPADDR: \"%s\"\n", mic->name, buffer);
}