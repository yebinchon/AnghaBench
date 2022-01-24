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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fs_context*) ; 
 int /*<<< orphan*/  MS_RMT_MASK ; 
 int FUNC1 (struct fs_context*) ; 
 struct fs_context* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fs_context*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_context*) ; 
 int FUNC5 (struct fs_context*) ; 

__attribute__((used)) static int FUNC6(struct super_block *s,
			      int flags, void *data)
{
	struct fs_context *fc;
	int ret;

	/* The caller really need to be passing fc down into mount_single(),
	 * then a chunk of this can be removed.  [Bollocks -- AV]
	 * Better yet, reconfiguration shouldn't happen, but rather the second
	 * mount should be rejected if the parameters are not compatible.
	 */
	fc = FUNC2(s->s_root, flags, MS_RMT_MASK);
	if (FUNC0(fc))
		return FUNC1(fc);

	ret = FUNC3(fc, data);
	if (ret < 0)
		goto out;

	ret = FUNC5(fc);
out:
	FUNC4(fc);
	return ret;
}