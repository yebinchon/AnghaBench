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
struct net {int /*<<< orphan*/  proc_net; } ;
struct file {int dummy; } ;
struct dir_context {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,struct dir_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct dir_context *ctx)
{
	int ret;
	struct net *net;

	ret = -EINVAL;
	net = FUNC1(FUNC0(file));
	if (net != NULL) {
		ret = FUNC2(file, ctx, net->proc_net);
		FUNC3(net);
	}
	return ret;
}