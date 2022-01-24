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
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_CODEC_IDX_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct hdac_bus*) ; 

__attribute__((used)) static int FUNC2(struct hdac_bus *bus)
{
	int err;

	/*
	 * The HDMI codec is in GPU so we need to ensure that it is powered
	 * up and ready for probe
	 */
	err = FUNC1(bus);
	if (err < 0)
		return err;

	FUNC0(bus, HDA_CODEC_IDX_CONTROLLER, true);

	return 0;
}