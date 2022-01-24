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
typedef  int u32 ;
typedef  int u16 ;
struct ocfs2_dinode {void* i_links_count_hi; void* i_links_count; } ;

/* Variables and functions */
 int OCFS2_LINKS_HI_SHIFT ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct ocfs2_dinode *di, u32 nlink)
{
	u16 lo, hi;

	lo = nlink;
	hi = nlink >> OCFS2_LINKS_HI_SHIFT;

	di->i_links_count = FUNC0(lo);
	di->i_links_count_hi = FUNC0(hi);
}