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
struct special_entry {int size; scalar_t__ sec; } ;
struct special_alt {int /*<<< orphan*/  list; } ;
struct section {int len; int /*<<< orphan*/  name; } ;
struct list_head {int dummy; } ;
struct elf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct special_entry* entries ; 
 struct section* FUNC2 (struct elf*,scalar_t__) ; 
 int FUNC3 (struct elf*,struct special_entry*,struct section*,int,struct special_alt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct special_alt* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct special_alt*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct elf *elf, struct list_head *alts)
{
	struct special_entry *entry;
	struct section *sec;
	unsigned int nr_entries;
	struct special_alt *alt;
	int idx, ret;

	FUNC0(alts);

	for (entry = entries; entry->sec; entry++) {
		sec = FUNC2(elf, entry->sec);
		if (!sec)
			continue;

		if (sec->len % entry->size != 0) {
			FUNC1("%s size not a multiple of %d",
			     sec->name, entry->size);
			return -1;
		}

		nr_entries = sec->len / entry->size;

		for (idx = 0; idx < nr_entries; idx++) {
			alt = FUNC5(sizeof(*alt));
			if (!alt) {
				FUNC1("malloc failed");
				return -1;
			}
			FUNC6(alt, 0, sizeof(*alt));

			ret = FUNC3(elf, entry, sec, idx, alt);
			if (ret)
				return ret;

			FUNC4(&alt->list, alts);
		}
	}

	return 0;
}