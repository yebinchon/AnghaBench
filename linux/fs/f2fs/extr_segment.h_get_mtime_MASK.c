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
typedef  scalar_t__ time64_t ;
struct sit_info {scalar_t__ mounted_time; scalar_t__ elapsed_time; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct sit_info* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static inline unsigned long long FUNC2(struct f2fs_sb_info *sbi,
						bool base_time)
{
	struct sit_info *sit_i = FUNC0(sbi);
	time64_t diff, now = FUNC1();

	if (now >= sit_i->mounted_time)
		return sit_i->elapsed_time + now - sit_i->mounted_time;

	/* system time is set to the past */
	if (!base_time) {
		diff = sit_i->mounted_time - now;
		if (sit_i->elapsed_time >= diff)
			return sit_i->elapsed_time - diff;
		return 0;
	}
	return sit_i->elapsed_time;
}