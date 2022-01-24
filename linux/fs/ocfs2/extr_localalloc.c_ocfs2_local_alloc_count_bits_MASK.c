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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_local_alloc {int /*<<< orphan*/  la_size; int /*<<< orphan*/  la_bitmap; } ;
struct ocfs2_dinode {int dummy; } ;

/* Variables and functions */
 struct ocfs2_local_alloc* FUNC0 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct ocfs2_dinode *alloc)
{
	u32 count;
	struct ocfs2_local_alloc *la = FUNC0(alloc);

	count = FUNC2(la->la_bitmap, FUNC1(la->la_size));

	FUNC3(count);
	return count;
}