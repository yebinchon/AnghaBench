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
struct proc_dir_entry {int /*<<< orphan*/  single_show; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 struct net* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,struct net*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct proc_dir_entry *de = FUNC0(inode);
	struct net *net;
	int err;

	net = FUNC1(inode);
	if (!net)
		return -ENXIO;

	err = FUNC3(file, de->single_show, net);
	if (err)
		FUNC2(net);
	return err;
}