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
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;

/* Variables and functions */
 struct qstr FUNC0 (char*,int) ; 
 struct f2fs_dir_entry* FUNC1 (struct inode*,struct qstr*,struct page**) ; 

struct f2fs_dir_entry *FUNC2(struct inode *dir, struct page **p)
{
	struct qstr dotdot = FUNC0("..", 2);

	return FUNC1(dir, &dotdot, p);
}