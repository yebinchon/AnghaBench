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
struct snd_info_entry {int mode; } ;
struct snd_dg00x {TYPE_1__* card; } ;
struct TYPE_2__ {struct snd_info_entry* proc_root; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int /*<<< orphan*/  proc_read_clock ; 
 struct snd_info_entry* FUNC0 (TYPE_1__*,char*,struct snd_info_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct snd_dg00x*,int /*<<< orphan*/ ) ; 

void FUNC2(struct snd_dg00x *dg00x)
{
	struct snd_info_entry *root, *entry;

	/*
	 * All nodes are automatically removed at snd_card_disconnect(),
	 * by following to link list.
	 */
	root = FUNC0(dg00x->card, "firewire",
					  dg00x->card->proc_root);
	if (root == NULL)
		return;

	root->mode = S_IFDIR | 0555;

	entry = FUNC0(dg00x->card, "clock", root);
	if (entry)
		FUNC1(entry, dg00x, proc_read_clock);
}