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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct page*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int,int) ; 

struct page *FUNC3(struct page *parent, int start)
{
	struct f2fs_sb_info *sbi = FUNC0(parent);
	nid_t nid = FUNC2(parent, start, false);

	return FUNC1(sbi, nid, parent, start);
}