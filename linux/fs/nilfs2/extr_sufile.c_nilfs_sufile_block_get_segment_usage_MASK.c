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
typedef  void nilfs_segment_usage ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int mi_entry_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode const*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nilfs_segment_usage *
FUNC3(const struct inode *sufile, __u64 segnum,
				     struct buffer_head *bh, void *kaddr)
{
	return kaddr + FUNC1(bh) +
		FUNC2(sufile, segnum) *
		FUNC0(sufile)->mi_entry_size;
}