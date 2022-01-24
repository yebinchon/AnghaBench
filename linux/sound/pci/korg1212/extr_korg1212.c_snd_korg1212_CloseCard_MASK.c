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
struct snd_korg1212 {size_t cardState; int opencnt; int /*<<< orphan*/  open_mutex; } ;

/* Variables and functions */
 int K1212_CMDRET_Success ; 
 int /*<<< orphan*/  K1212_DB_SelectPlayMode ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  K1212_MODE_StopPlay ; 
 size_t K1212_STATE_READY ; 
 size_t K1212_STATE_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_korg1212*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_korg1212*,size_t) ; 
 int* stateName ; 

__attribute__((used)) static int FUNC7(struct snd_korg1212 * korg1212)
{
	FUNC0("K1212_DEBUG: CloseCard [%s] %d\n",
			   stateName[korg1212->cardState], korg1212->opencnt);

	FUNC1(&korg1212->open_mutex);
	if (--(korg1212->opencnt)) {
		FUNC2(&korg1212->open_mutex);
		return 0;
	}

        if (korg1212->cardState == K1212_STATE_SETUP) {
                int rc = FUNC3(korg1212, K1212_DB_SelectPlayMode,
                                K1212_MODE_StopPlay, 0, 0, 0);
		if (rc)
			FUNC0("K1212_DEBUG: CloseCard - RC = %d [%s]\n",
					   rc, stateName[korg1212->cardState]);
		if (rc != K1212_CMDRET_Success) {
			FUNC2(&korg1212->open_mutex);
                        return 0;
		}
        } else if (korg1212->cardState > K1212_STATE_SETUP) {
		FUNC4(korg1212);
        }

        if (korg1212->cardState > K1212_STATE_READY) {
		FUNC5(korg1212);
                FUNC6(korg1212, K1212_STATE_READY);
	}

	FUNC2(&korg1212->open_mutex);
        return 0;
}