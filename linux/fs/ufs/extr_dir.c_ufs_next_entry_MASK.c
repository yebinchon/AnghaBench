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
struct ufs_dir_entry {int /*<<< orphan*/  d_reclen; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ufs_dir_entry *
FUNC1(struct super_block *sb, struct ufs_dir_entry *p)
{
	return (struct ufs_dir_entry *)((char *)p +
					FUNC0(sb, p->d_reclen));
}