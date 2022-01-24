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
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct net {TYPE_1__* proc_net; } ;
struct kstat {int /*<<< orphan*/  nlink; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlink; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 struct net* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

__attribute__((used)) static int FUNC4(const struct path *path, struct kstat *stat,
				 u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC0(path->dentry);
	struct net *net;

	net = FUNC2(inode);

	FUNC1(inode, stat);

	if (net != NULL) {
		stat->nlink = net->proc_net->nlink;
		FUNC3(net);
	}

	return 0;
}