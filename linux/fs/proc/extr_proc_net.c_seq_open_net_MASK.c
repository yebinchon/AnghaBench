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
struct seq_net_private {struct net* net; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {unsigned int state_size; int /*<<< orphan*/  seq_ops; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int ENXIO ; 
 int FMODE_WRITE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct seq_net_private* FUNC2 (struct file*,int /*<<< orphan*/ ,unsigned int) ; 
 struct net* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	unsigned int state_size = FUNC0(inode)->state_size;
	struct seq_net_private *p;
	struct net *net;

	FUNC1(state_size < sizeof(*p));

	if (file->f_mode & FMODE_WRITE && !FUNC0(inode)->write)
		return -EACCES;

	net = FUNC3(inode);
	if (!net)
		return -ENXIO;

	p = FUNC2(file, FUNC0(inode)->seq_ops, state_size);
	if (!p) {
		FUNC4(net);
		return -ENOMEM;
	}
#ifdef CONFIG_NET_NS
	p->net = net;
#endif
	return 0;
}