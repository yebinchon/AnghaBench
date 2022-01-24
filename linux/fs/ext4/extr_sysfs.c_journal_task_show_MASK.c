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
struct ext4_sb_info {TYPE_1__* s_journal; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  j_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct ext4_sb_info *sbi, char *buf)
{
	if (!sbi->s_journal)
		return FUNC0(buf, PAGE_SIZE, "<none>\n");
	return FUNC0(buf, PAGE_SIZE, "%d\n",
			FUNC1(sbi->s_journal->j_task));
}