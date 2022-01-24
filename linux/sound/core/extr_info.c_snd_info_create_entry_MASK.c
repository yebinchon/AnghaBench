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
struct snd_info_entry {int mode; int /*<<< orphan*/  access; int /*<<< orphan*/  children; int /*<<< orphan*/  list; struct module* module; struct snd_info_entry* parent; int /*<<< orphan*/  content; int /*<<< orphan*/ * name; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_INFO_CONTENT_TEXT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct snd_info_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct snd_info_entry *
FUNC8(const char *name, struct snd_info_entry *parent,
		      struct module *module)
{
	struct snd_info_entry *entry;
	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (entry == NULL)
		return NULL;
	entry->name = FUNC2(name, GFP_KERNEL);
	if (entry->name == NULL) {
		FUNC1(entry);
		return NULL;
	}
	entry->mode = S_IFREG | 0444;
	entry->content = SNDRV_INFO_CONTENT_TEXT;
	FUNC5(&entry->access);
	FUNC0(&entry->children);
	FUNC0(&entry->list);
	entry->parent = parent;
	entry->module = module;
	if (parent) {
		FUNC6(&parent->access);
		FUNC4(&entry->list, &parent->children);
		FUNC7(&parent->access);
	}
	return entry;
}