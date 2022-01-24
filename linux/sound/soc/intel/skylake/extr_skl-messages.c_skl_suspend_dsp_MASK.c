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
struct skl_dev {int /*<<< orphan*/  dsp; } ;
struct hdac_bus {int /*<<< orphan*/  ppcap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC1 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int) ; 

int FUNC4(struct skl_dev *skl)
{
	struct hdac_bus *bus = FUNC1(skl);
	int ret;

	/* if ppcap is not supported return 0 */
	if (!bus->ppcap)
		return 0;

	ret = FUNC0(skl->dsp);
	if (ret < 0)
		return ret;

	/* disable ppcap interrupt */
	FUNC3(bus, false);
	FUNC2(bus, false);

	return 0;
}