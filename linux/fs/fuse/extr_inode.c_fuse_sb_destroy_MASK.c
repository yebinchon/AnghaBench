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
struct super_block {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  killsb; int /*<<< orphan*/ * sb; scalar_t__ destroy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 struct fuse_conn* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb)
{
	struct fuse_conn *fc = FUNC4(sb);

	if (fc) {
		if (fc->destroy)
			FUNC2(fc);

		FUNC1(fc);
		FUNC3(fc);

		FUNC0(&fc->killsb);
		fc->sb = NULL;
		FUNC5(&fc->killsb);
	}
}