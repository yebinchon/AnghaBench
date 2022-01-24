#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_map_blocks {int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_pblk; scalar_t__ m_lblk; } ;
struct TYPE_5__ {TYPE_1__* s_es; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_journal_inum; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char const*,unsigned int,int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, const char *func,
				unsigned int line,
				struct ext4_map_blocks *map)
{
	if (FUNC3(inode->i_sb) &&
	    (inode->i_ino ==
	     FUNC4(FUNC0(inode->i_sb)->s_es->s_journal_inum)))
		return 0;
	if (!FUNC1(FUNC0(inode->i_sb), map->m_pblk,
				   map->m_len)) {
		FUNC2(inode, func, line, map->m_pblk,
				 "lblock %lu mapped to illegal pblock %llu "
				 "(length %d)", (unsigned long) map->m_lblk,
				 map->m_pblk, map->m_len);
		return -EFSCORRUPTED;
	}
	return 0;
}