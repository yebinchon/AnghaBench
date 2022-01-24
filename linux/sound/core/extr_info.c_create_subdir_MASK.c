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
struct snd_info_entry {int mode; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int S_IFDIR ; 
 struct snd_info_entry* FUNC0 (struct module*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*) ; 
 scalar_t__ FUNC2 (struct snd_info_entry*) ; 

__attribute__((used)) static struct snd_info_entry *FUNC3(struct module *mod,
					    const char *name)
{
	struct snd_info_entry *entry;

	entry = FUNC0(mod, name, NULL);
	if (!entry)
		return NULL;
	entry->mode = S_IFDIR | 0555;
	if (FUNC2(entry) < 0) {
		FUNC1(entry);
		return NULL;
	}
	return entry;
}