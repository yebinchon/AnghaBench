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
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int* i_gc_failures; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 size_t GC_FAILURE_PIN ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 

__attribute__((used)) static inline void FUNC2(struct inode *inode,
					unsigned int count)
{
	FUNC0(inode)->i_gc_failures[GC_FAILURE_PIN] = count;
	FUNC1(inode, true);
}