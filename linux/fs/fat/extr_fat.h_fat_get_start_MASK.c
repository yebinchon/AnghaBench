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
struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {int /*<<< orphan*/  starthi; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct msdos_sb_info const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const struct msdos_sb_info *sbi,
				const struct msdos_dir_entry *de)
{
	int cluster = FUNC1(de->start);
	if (FUNC0(sbi))
		cluster |= (FUNC1(de->starthi) << 16);
	return cluster;
}