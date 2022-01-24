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
struct snd_timer {int dummy; } ;
struct snd_device {struct snd_timer* device_data; } ;
typedef  int /*<<< orphan*/  dev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct snd_device*) ; 

int FUNC2(struct snd_timer *timer)
{
	struct snd_device dev;

	FUNC0(&dev, 0, sizeof(dev));
	dev.device_data = timer;
	return FUNC1(&dev);
}