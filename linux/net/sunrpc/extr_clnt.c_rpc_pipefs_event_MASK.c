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
struct super_block {int /*<<< orphan*/  s_fs_info; } ;
struct rpc_clnt {int dummy; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_clnt*,unsigned long,struct super_block*) ; 
 struct rpc_clnt* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long event,
			    void *ptr)
{
	struct super_block *sb = ptr;
	struct rpc_clnt *clnt;
	int error = 0;

	while ((clnt = FUNC1(sb->s_fs_info, event))) {
		error = FUNC0(clnt, event, sb);
		if (error)
			break;
	}
	return error;
}