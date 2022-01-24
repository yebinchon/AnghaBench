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
struct TYPE_2__ {int /*<<< orphan*/  nreg; struct ctl_table_root* root; } ;
struct ctl_dir {TYPE_1__ header; } ;
struct ctl_table_set {struct ctl_dir dir; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {scalar_t__ procname; } ;
struct ctl_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ctl_dir*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ctl_dir* FUNC3 (struct ctl_dir*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_table_header*,struct ctl_table_root*,struct ctl_table_set*,struct ctl_node*,struct ctl_table*) ; 
 scalar_t__ FUNC5 (struct ctl_dir*,struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_table_header*) ; 
 struct ctl_table_header* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,struct ctl_table*) ; 
 int /*<<< orphan*/  sysctl_lock ; 

struct ctl_table_header *FUNC13(
	struct ctl_table_set *set,
	const char *path, struct ctl_table *table)
{
	struct ctl_table_root *root = set->dir.header.root;
	struct ctl_table_header *header;
	const char *name, *nextname;
	struct ctl_dir *dir;
	struct ctl_table *entry;
	struct ctl_node *node;
	int nr_entries = 0;

	for (entry = table; entry->procname; entry++)
		nr_entries++;

	header = FUNC7(sizeof(struct ctl_table_header) +
			 sizeof(struct ctl_node)*nr_entries, GFP_KERNEL);
	if (!header)
		return NULL;

	node = (struct ctl_node *)(header + 1);
	FUNC4(header, root, set, node, table);
	if (FUNC12(path, table))
		goto fail;

	FUNC8(&sysctl_lock);
	dir = &set->dir;
	/* Reference moved down the diretory tree get_subdir */
	dir->header.nreg++;
	FUNC9(&sysctl_lock);

	/* Find the directory for the ctl_table */
	for (name = path; name; name = nextname) {
		int namelen;
		nextname = FUNC10(name, '/');
		if (nextname) {
			namelen = nextname - name;
			nextname++;
		} else {
			namelen = FUNC11(name);
		}
		if (namelen == 0)
			continue;

		dir = FUNC3(dir, name, namelen);
		if (FUNC0(dir))
			goto fail;
	}

	FUNC8(&sysctl_lock);
	if (FUNC5(dir, header))
		goto fail_put_dir_locked;

	FUNC1(&dir->header);
	FUNC9(&sysctl_lock);

	return header;

fail_put_dir_locked:
	FUNC1(&dir->header);
	FUNC9(&sysctl_lock);
fail:
	FUNC6(header);
	FUNC2();
	return NULL;
}