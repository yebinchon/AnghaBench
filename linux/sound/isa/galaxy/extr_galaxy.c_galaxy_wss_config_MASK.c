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
typedef  int /*<<< orphan*/  u8 ;
struct snd_galaxy {int /*<<< orphan*/  wss_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  GALAXY_MODE_WSS ; 
 int FUNC0 (struct snd_galaxy*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_galaxy *galaxy, u8 wss_config)
{
	int err;

	err = FUNC1(galaxy->wss_port);
	if (err < 0)
		return err;

	FUNC2(galaxy->wss_port, wss_config);

	err = FUNC0(galaxy, GALAXY_MODE_WSS);
	if (err < 0)
		return err;

	return 0;
}