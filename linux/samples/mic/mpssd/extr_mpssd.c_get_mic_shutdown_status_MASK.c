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
struct mic_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int MIC_CRASHED ; 
 int MIC_HALTED ; 
 int MIC_NOP ; 
 int MIC_POWER_OFF ; 
 int MIC_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(struct mic_info *mic, char *shutdown_status)
{
	if (!FUNC2(shutdown_status, "nop"))
		return MIC_NOP;
	if (!FUNC2(shutdown_status, "crashed"))
		return MIC_CRASHED;
	if (!FUNC2(shutdown_status, "halted"))
		return MIC_HALTED;
	if (!FUNC2(shutdown_status, "poweroff"))
		return MIC_POWER_OFF;
	if (!FUNC2(shutdown_status, "restart"))
		return MIC_RESTART;
	FUNC1("%s: BUG invalid status %s\n", mic->name, shutdown_status);
	/* Invalid state */
	FUNC0(0);
}