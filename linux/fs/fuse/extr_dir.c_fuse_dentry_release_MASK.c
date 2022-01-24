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
typedef  union fuse_dentry {int dummy; } fuse_dentry ;
struct dentry {union fuse_dentry* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union fuse_dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC1(struct dentry *dentry)
{
	union fuse_dentry *fd = dentry->d_fsdata;

	FUNC0(fd, rcu);
}