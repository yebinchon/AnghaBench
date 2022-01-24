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
struct TYPE_3__ {void (* write ) (struct snd_info_entry*,struct snd_info_buffer*) ;} ;
struct TYPE_4__ {TYPE_1__ text; } ;
struct snd_info_entry {int mode; TYPE_2__ c; } ;
struct snd_card {int /*<<< orphan*/  proc_root; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct snd_info_entry* FUNC0 (struct snd_card*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,void*,void (*) (struct snd_info_entry*,struct snd_info_buffer*)) ; 

int FUNC2(struct snd_card *card, const char *name,
			 void *private_data,
			 void (*read)(struct snd_info_entry *,
				      struct snd_info_buffer *),
			 void (*write)(struct snd_info_entry *entry,
				       struct snd_info_buffer *buffer))
{
	struct snd_info_entry *entry;

	entry = FUNC0(card, name, card->proc_root);
	if (!entry)
		return -ENOMEM;
	FUNC1(entry, private_data, read);
	if (write) {
		entry->mode |= 0200;
		entry->c.text.write = write;
	}
	return 0;
}