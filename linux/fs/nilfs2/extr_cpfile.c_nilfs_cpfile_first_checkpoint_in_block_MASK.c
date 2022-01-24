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
typedef  unsigned long __u64 ;
struct TYPE_2__ {unsigned long mi_first_entry_offset; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode const*) ; 
 scalar_t__ FUNC1 (struct inode const*) ; 

__attribute__((used)) static __u64 FUNC2(const struct inode *cpfile,
						    unsigned long blkoff)
{
	return (__u64)FUNC1(cpfile) * blkoff
		+ 1 - FUNC0(cpfile)->mi_first_entry_offset;
}