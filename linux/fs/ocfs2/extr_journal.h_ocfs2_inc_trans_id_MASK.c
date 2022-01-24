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
struct ocfs2_journal {int j_trans_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trans_inc_lock ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline unsigned long FUNC3(struct ocfs2_journal *j)
{
	unsigned long old_id;
	FUNC0(&trans_inc_lock);
	old_id = j->j_trans_id++;
	if (FUNC2(!j->j_trans_id))
		j->j_trans_id = 1;
	FUNC1(&trans_inc_lock);
	return old_id;
}