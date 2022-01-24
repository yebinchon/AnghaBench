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
typedef  scalar_t__ u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ocfs2_extent_list* FUNC2 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_path *left_path,
						 u32 insert_cpos)
{
	struct ocfs2_extent_list *left_el;
	struct ocfs2_extent_rec *rec;
	int next_free;

	left_el = FUNC2(left_path);
	next_free = FUNC0(left_el->l_next_free_rec);
	rec = &left_el->l_recs[next_free - 1];

	if (insert_cpos > FUNC1(rec->e_cpos))
		return 1;
	return 0;
}