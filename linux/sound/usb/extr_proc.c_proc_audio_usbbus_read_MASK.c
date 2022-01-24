#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_usb_audio {TYPE_2__* dev; int /*<<< orphan*/  shutdown; } ;
struct snd_info_entry {struct snd_usb_audio* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  devnum; TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	struct snd_usb_audio *chip = entry->private_data;
	if (!FUNC0(&chip->shutdown))
		FUNC1(buffer, "%03d/%03d\n", chip->dev->bus->busnum, chip->dev->devnum);
}