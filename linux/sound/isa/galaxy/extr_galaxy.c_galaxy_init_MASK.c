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
typedef  scalar_t__ u8 ;
struct snd_galaxy {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_COMMAND_GALAXY_8 ; 
 int ENODEV ; 
 int /*<<< orphan*/  GALAXY_COMMAND_GET_TYPE ; 
 scalar_t__ GALAXY_DSP_MAJOR ; 
 scalar_t__ GALAXY_DSP_MINOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_galaxy *galaxy, u8 *type)
{
	u8 major;
	u8 minor;
	int err;

	err = FUNC3(galaxy->port);
	if (err < 0)
		return err;

	err = FUNC2(galaxy->port, &major, &minor);
	if (err < 0)
		return err;

	if (major != GALAXY_DSP_MAJOR || minor != GALAXY_DSP_MINOR)
		return -ENODEV;

	err = FUNC0(galaxy->port, DSP_COMMAND_GALAXY_8);
	if (err < 0)
		return err;

	err = FUNC0(galaxy->port, GALAXY_COMMAND_GET_TYPE);
	if (err < 0)
		return err;

	err = FUNC1(galaxy->port, type);
	if (err < 0)
		return err;

	return 0;
}