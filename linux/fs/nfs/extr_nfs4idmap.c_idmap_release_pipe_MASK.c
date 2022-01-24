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
struct rpc_inode {scalar_t__ private; } ;
struct inode {int dummy; } ;
struct idmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 struct rpc_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct idmap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct inode *inode)
{
	struct rpc_inode *rpci = FUNC0(inode);
	struct idmap *idmap = (struct idmap *)rpci->private;

	FUNC1(idmap, -EPIPE);
}