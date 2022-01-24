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
 int HDSPM_madiLock ; 
 int HDSPM_madiSync ; 
 int /*<<< orphan*/  HDSPM_statusRegister ; 
 int FUNC0 (struct hdspm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hdspm *hdspm)
{
	int status = FUNC0(hdspm, HDSPM_statusRegister);
	if (status & HDSPM_madiLock) {
		if (status & HDSPM_madiSync)
			return 2;
		else
			return 1;
	}
	return 0;
}