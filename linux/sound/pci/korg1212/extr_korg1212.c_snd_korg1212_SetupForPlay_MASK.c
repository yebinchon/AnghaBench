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
struct snd_korg1212 {size_t cardState; int setcnt; } ;

/* Variables and functions */
 int K1212_CMDRET_Success ; 
 int /*<<< orphan*/  K1212_DB_SelectPlayMode ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  K1212_MODE_SetupPlay ; 
 int /*<<< orphan*/  K1212_STATE_SETUP ; 
 int FUNC1 (struct snd_korg1212*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_korg1212*,int /*<<< orphan*/ ) ; 
 int* stateName ; 

__attribute__((used)) static int FUNC3(struct snd_korg1212 * korg1212)
{
	int rc;

	FUNC0("K1212_DEBUG: SetupForPlay [%s] %d\n",
			   stateName[korg1212->cardState], korg1212->setcnt);

        if (korg1212->setcnt++)
		return 0;

        FUNC2(korg1212, K1212_STATE_SETUP);
        rc = FUNC1(korg1212, K1212_DB_SelectPlayMode,
                                        K1212_MODE_SetupPlay, 0, 0, 0);
	if (rc)
		FUNC0("K1212_DEBUG: SetupForPlay - RC = %d [%s]\n",
				   rc, stateName[korg1212->cardState]);
        if (rc != K1212_CMDRET_Success) {
                return 1;
        }
        return 0;
}