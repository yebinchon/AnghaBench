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
struct hdspm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_ClockModeMaster ; 
 int /*<<< orphan*/  HDSPM_c0Master ; 
 scalar_t__ FUNC0 (struct hdspm*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hdspm *hdspm, int mode)
{
	FUNC1(hdspm,
			(FUNC0(hdspm)) ?
			HDSPM_c0Master : HDSPM_ClockModeMaster,
			(0 == mode));
}