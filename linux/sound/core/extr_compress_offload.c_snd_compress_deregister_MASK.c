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
struct snd_compr {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  device_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_compr*) ; 

int FUNC4(struct snd_compr *device)
{
	FUNC2("Removing compressed device %s\n", device->name);
	FUNC0(&device_mutex);
	FUNC3(device);
	FUNC1(&device_mutex);
	return 0;
}