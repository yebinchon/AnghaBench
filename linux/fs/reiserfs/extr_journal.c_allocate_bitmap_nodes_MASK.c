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
struct reiserfs_journal {int /*<<< orphan*/  j_free_bitmap_nodes; int /*<<< orphan*/  j_bitmap_nodes; } ;
struct reiserfs_bitmap_node {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int REISERFS_MIN_BITMAP_NODES ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 struct reiserfs_bitmap_node* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	int i;
	struct reiserfs_journal *journal = FUNC0(sb);
	struct reiserfs_bitmap_node *bn = NULL;
	for (i = 0; i < REISERFS_MIN_BITMAP_NODES; i++) {
		bn = FUNC1(sb);
		if (bn) {
			FUNC2(&bn->list, &journal->j_bitmap_nodes);
			journal->j_free_bitmap_nodes++;
		} else {
			/* this is ok, we'll try again when more are needed */
			break;
		}
	}
}