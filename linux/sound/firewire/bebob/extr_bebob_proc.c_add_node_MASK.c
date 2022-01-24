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
struct snd_info_entry {int dummy; } ;
struct snd_bebob {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 struct snd_info_entry* FUNC0 (int /*<<< orphan*/ ,char const*,struct snd_info_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct snd_bebob*,void (*) (struct snd_info_entry*,struct snd_info_buffer*)) ; 

__attribute__((used)) static void
FUNC2(struct snd_bebob *bebob, struct snd_info_entry *root, const char *name,
	 void (*op)(struct snd_info_entry *e, struct snd_info_buffer *b))
{
	struct snd_info_entry *entry;

	entry = FUNC0(bebob->card, name, root);
	if (entry)
		FUNC1(entry, bebob, op);
}