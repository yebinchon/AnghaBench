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
struct snd_korg1212 {int idleMonitorOn; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERCOMMAND_DELAY ; 
 int /*<<< orphan*/  K1212_DB_SelectPlayMode ; 
 int /*<<< orphan*/  K1212_MODE_MonitorOn ; 
 int FUNC0 (struct snd_korg1212*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_korg1212 *korg1212)
{
	unsigned long flags;
	int rc;

        FUNC3(INTERCOMMAND_DELAY);
	FUNC1(&korg1212->lock, flags);
        korg1212->idleMonitorOn = 1;
        rc = FUNC0(korg1212, K1212_DB_SelectPlayMode,
					  K1212_MODE_MonitorOn, 0, 0, 0);
        FUNC2(&korg1212->lock, flags);
	return rc;
}