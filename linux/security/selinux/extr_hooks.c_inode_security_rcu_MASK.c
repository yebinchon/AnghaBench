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
struct inode_security_struct {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode_security_struct* FUNC0 (int) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,int) ; 
 struct inode_security_struct* FUNC2 (struct inode*) ; 

__attribute__((used)) static struct inode_security_struct *FUNC3(struct inode *inode, bool rcu)
{
	int error;

	error = FUNC1(inode, NULL, !rcu);
	if (error)
		return FUNC0(error);
	return FUNC2(inode);
}