#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_info_entry {struct cmipci* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct cmipci {scalar_t__ iobase; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry, 
				 struct snd_info_buffer *buffer)
{
	struct cmipci *cm = entry->private_data;
	int i, v;
	
	FUNC1(buffer, "%s\n", cm->card->longname);
	for (i = 0; i < 0x94; i++) {
		if (i == 0x28)
			i = 0x90;
		v = FUNC0(cm->iobase + i);
		if (i % 4 == 0)
			FUNC1(buffer, "\n%02x:", i);
		FUNC1(buffer, " %02x", v);
	}
	FUNC1(buffer, "\n");
}