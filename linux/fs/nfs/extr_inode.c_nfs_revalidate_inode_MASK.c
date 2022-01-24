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
struct nfs_server {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ESTALE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct nfs_server*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

int FUNC3(struct nfs_server *server, struct inode *inode)
{
	if (!FUNC2(inode))
		return FUNC0(inode) ? -ESTALE : 0;
	return FUNC1(server, inode);
}