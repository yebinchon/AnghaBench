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
struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,...) ; 
 char* FUNC2 (struct ocfs2_xa_loc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_xa_loc*) ; 
 unsigned int FUNC4 (struct ocfs2_xa_loc*) ; 

__attribute__((used)) static void FUNC5(struct ocfs2_xa_loc *loc,
					    const char *what,
					    unsigned int orig_clusters)
{
	unsigned int new_clusters = FUNC4(loc);
	char *nameval_buf = FUNC2(loc,
				FUNC0(loc->xl_entry->xe_name_offset));

	if (new_clusters < orig_clusters) {
		FUNC1(ML_ERROR,
		     "Partial truncate while %s xattr %.*s.  Leaking "
		     "%u clusters and removing the entry\n",
		     what, loc->xl_entry->xe_name_len, nameval_buf,
		     orig_clusters - new_clusters);
		FUNC3(loc);
	} else if (!orig_clusters) {
		FUNC1(ML_ERROR,
		     "Unable to allocate an external value for xattr "
		     "%.*s safely.  Leaking %u clusters and removing the "
		     "entry\n",
		     loc->xl_entry->xe_name_len, nameval_buf,
		     new_clusters - orig_clusters);
		FUNC3(loc);
	} else if (new_clusters > orig_clusters)
		FUNC1(ML_ERROR,
		     "Unable to grow xattr %.*s safely.  %u new clusters "
		     "have been added, but the value will not be "
		     "modified\n",
		     loc->xl_entry->xe_name_len, nameval_buf,
		     new_clusters - orig_clusters);
}