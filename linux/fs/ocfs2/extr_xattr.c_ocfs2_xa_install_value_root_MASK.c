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
struct TYPE_2__ {int /*<<< orphan*/  xe_name_offset; int /*<<< orphan*/  xe_name_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_XATTR_ROOT_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  def_xv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct ocfs2_xa_loc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_xa_loc *loc)
{
	int name_size = FUNC0(loc->xl_entry->xe_name_len);
	char *nameval_buf;

	nameval_buf = FUNC3(loc,
				FUNC1(loc->xl_entry->xe_name_offset));
	FUNC2(nameval_buf + name_size, &def_xv, OCFS2_XATTR_ROOT_SIZE);
}