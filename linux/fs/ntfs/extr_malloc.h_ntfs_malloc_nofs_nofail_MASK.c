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

/* Variables and functions */
 int GFP_NOFS ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NOFAIL ; 
 void* FUNC0 (unsigned long,int) ; 

__attribute__((used)) static inline void *FUNC1(unsigned long size)
{
	return FUNC0(size, GFP_NOFS | __GFP_HIGHMEM | __GFP_NOFAIL);
}