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
struct rpc_xprt {int dummy; } ;
struct inode {struct rpc_xprt* i_private; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ ,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  xprt_info_show ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, struct file *filp)
{
	int ret;
	struct rpc_xprt *xprt = inode->i_private;

	ret = FUNC0(filp, xprt_info_show, xprt);

	if (!ret) {
		if (!FUNC2(xprt)) {
			FUNC1(inode, filp);
			ret = -EINVAL;
		}
	}
	return ret;
}