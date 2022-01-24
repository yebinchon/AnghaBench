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
struct snd_hal2 {int dummy; } ;
struct snd_device {struct snd_hal2* device_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGI_HPCDMA_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snd_hal2*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_hal2*) ; 

__attribute__((used)) static int FUNC2(struct snd_device *device)
{
	struct snd_hal2 *hal2 = device->device_data;

	FUNC0(SGI_HPCDMA_IRQ, hal2);
	FUNC1(hal2);
	return 0;
}