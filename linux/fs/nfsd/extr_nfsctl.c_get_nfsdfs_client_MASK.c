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
struct nfsdfs_client {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nfsdfs_client* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

struct nfsdfs_client *FUNC3(struct inode *inode)
{
	struct nfsdfs_client *nc;

	FUNC1(inode);
	nc = FUNC0(inode);
	FUNC2(inode);
	return nc;
}