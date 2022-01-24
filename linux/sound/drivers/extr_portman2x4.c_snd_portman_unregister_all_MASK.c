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
 int SNDRV_CARDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** platform_devices ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  portman_parport_driver ; 
 int /*<<< orphan*/  snd_portman_driver ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	for (i = 0; i < SNDRV_CARDS; ++i) {
		if (platform_devices[i]) {
			FUNC1(platform_devices[i]);
			platform_devices[i] = NULL;
		}
	}		
	FUNC2(&snd_portman_driver);
	FUNC0(&portman_parport_driver);
}