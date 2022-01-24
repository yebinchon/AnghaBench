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
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNDRV_AUTO_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/ * enable ; 
 scalar_t__* port ; 

__attribute__((used)) static int FUNC1(struct device *dev, unsigned int n)
{
	if (!enable[n])
		return 0;

	if (port[n] == SNDRV_AUTO_PORT) {
		FUNC0(dev, "please specify port\n");
		return 0;
	}
	return 1;
}