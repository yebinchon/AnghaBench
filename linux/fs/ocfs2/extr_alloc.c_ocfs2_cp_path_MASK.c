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
struct ocfs2_path {TYPE_1__* p_node; } ;
struct TYPE_2__ {scalar_t__ bh; int /*<<< orphan*/  el; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_MAX_PATH_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_path*,int) ; 
 scalar_t__ FUNC3 (struct ocfs2_path*) ; 
 scalar_t__ FUNC4 (struct ocfs2_path*) ; 
 scalar_t__ FUNC5 (struct ocfs2_path*) ; 

__attribute__((used)) static void FUNC6(struct ocfs2_path *dest, struct ocfs2_path *src)
{
	int i;

	FUNC0(FUNC4(dest) != FUNC4(src));
	FUNC0(FUNC5(dest) != FUNC5(src));
	FUNC0(FUNC3(dest) != FUNC3(src));

	FUNC2(dest, 1);

	for(i = 1; i < OCFS2_MAX_PATH_DEPTH; i++) {
		dest->p_node[i].bh = src->p_node[i].bh;
		dest->p_node[i].el = src->p_node[i].el;

		if (dest->p_node[i].bh)
			FUNC1(dest->p_node[i].bh);
	}
}