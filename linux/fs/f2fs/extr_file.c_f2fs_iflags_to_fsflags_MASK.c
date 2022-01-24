#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int iflag; int fsflag; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* f2fs_fsflags_map ; 

__attribute__((used)) static inline u32 FUNC1(u32 iflags)
{
	u32 fsflags = 0;
	int i;

	for (i = 0; i < FUNC0(f2fs_fsflags_map); i++)
		if (iflags & f2fs_fsflags_map[i].iflag)
			fsflags |= f2fs_fsflags_map[i].fsflag;

	return fsflags;
}