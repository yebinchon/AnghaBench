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
struct offset_v2 {int v; } ;
typedef  int __u64 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct offset_v2 *v2, int type)
{
	v2->v =
	    (v2->v & FUNC0(~0ULL >> 4)) | FUNC0((__u64) type << 60);
}