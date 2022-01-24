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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_data; scalar_t__ i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_FILE_DEBUG ; 
 int /*<<< orphan*/  GOSSIP_INODE_DEBUG ; 
 int ORANGEFS_FEATURE_READAHEAD ; 
 TYPE_1__* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int orangefs_features ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	FUNC3(GOSSIP_FILE_DEBUG,
		     "orangefs_file_release: called on %pD\n",
		     file);

	/*
	 * remove all associated inode pages from the page cache and
	 * readahead cache (if any); this forces an expensive refresh of
	 * data for the next caller of mmap (or 'get_block' accesses)
	 */
	if (FUNC0(file) &&
	    FUNC0(file)->i_mapping &&
	    FUNC4(&FUNC0(file)->i_data)) {
		if (orangefs_features & ORANGEFS_FEATURE_READAHEAD) {
			FUNC3(GOSSIP_INODE_DEBUG,
			    "calling flush_racache on %pU\n",
			    FUNC2(inode));
			FUNC1(inode);
			FUNC3(GOSSIP_INODE_DEBUG,
			    "flush_racache finished\n");
		}

	}
	return 0;
}