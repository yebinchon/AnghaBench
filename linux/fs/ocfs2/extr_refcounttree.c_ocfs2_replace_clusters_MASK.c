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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct ocfs2_caching_info* et_ci; } ;
struct ocfs2_cow_context {int (* cow_duplicate_clusters ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dealloc; int /*<<< orphan*/  meta_ac; TYPE_1__ data_et; int /*<<< orphan*/  inode; } ;
struct ocfs2_caching_info {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 unsigned int OCFS2_EXT_UNWRITTEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ocfs2_caching_info*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(handle_t *handle,
				  struct ocfs2_cow_context *context,
				  u32 cpos, u32 old,
				  u32 new, u32 len,
				  unsigned int ext_flags)
{
	int ret;
	struct ocfs2_caching_info *ci = context->data_et.et_ci;
	u64 ino = FUNC2(ci);

	FUNC4((unsigned long long)ino,
				     cpos, old, new, len, ext_flags);

	/*If the old clusters is unwritten, no need to duplicate. */
	if (!(ext_flags & OCFS2_EXT_UNWRITTEN)) {
		ret = context->cow_duplicate_clusters(handle, context->inode,
						      cpos, old, new, len);
		if (ret) {
			FUNC0(ret);
			goto out;
		}
	}

	ret = FUNC1(handle, &context->data_et,
				       cpos, new, len, ext_flags,
				       context->meta_ac, &context->dealloc);
	if (ret)
		FUNC0(ret);
out:
	return ret;
}