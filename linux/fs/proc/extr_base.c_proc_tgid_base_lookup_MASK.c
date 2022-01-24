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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct dentry* FUNC1 (struct inode*,struct dentry*,scalar_t__,scalar_t__) ; 
 scalar_t__ tgid_base_stuff ; 

__attribute__((used)) static struct dentry *FUNC2(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	return FUNC1(dir, dentry,
				  tgid_base_stuff,
				  tgid_base_stuff + FUNC0(tgid_base_stuff));
}