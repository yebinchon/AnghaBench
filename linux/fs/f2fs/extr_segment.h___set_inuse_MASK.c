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
struct free_segmap_info {int /*<<< orphan*/  free_sections; int /*<<< orphan*/  free_secmap; int /*<<< orphan*/  free_segments; int /*<<< orphan*/  free_segmap; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct free_segmap_info* FUNC0 (struct f2fs_sb_info*) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct f2fs_sb_info *sbi,
		unsigned int segno)
{
	struct free_segmap_info *free_i = FUNC0(sbi);
	unsigned int secno = FUNC1(sbi, segno);

	FUNC2(segno, free_i->free_segmap);
	free_i->free_segments--;
	if (!FUNC3(secno, free_i->free_secmap))
		free_i->free_sections--;
}