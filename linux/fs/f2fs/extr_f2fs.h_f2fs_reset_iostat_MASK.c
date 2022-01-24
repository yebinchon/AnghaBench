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
struct f2fs_sb_info {int /*<<< orphan*/  iostat_lock; scalar_t__* write_iostat; } ;

/* Variables and functions */
 int NR_IO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct f2fs_sb_info *sbi)
{
	int i;

	FUNC0(&sbi->iostat_lock);
	for (i = 0; i < NR_IO_TYPE; i++)
		sbi->write_iostat[i] = 0;
	FUNC1(&sbi->iostat_lock);
}