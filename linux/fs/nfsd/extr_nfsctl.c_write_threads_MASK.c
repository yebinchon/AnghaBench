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
struct net {int dummy; } ;
struct file {int /*<<< orphan*/  f_cred; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SIMPLE_TRANSACTION_LIMIT ; 
 int FUNC0 (char**,int*) ; 
 struct net* FUNC1 (struct file*) ; 
 int FUNC2 (struct net*) ; 
 int FUNC3 (int,struct net*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *file, char *buf, size_t size)
{
	char *mesg = buf;
	int rv;
	struct net *net = FUNC1(file);

	if (size > 0) {
		int newthreads;
		rv = FUNC0(&mesg, &newthreads);
		if (rv)
			return rv;
		if (newthreads < 0)
			return -EINVAL;
		rv = FUNC3(newthreads, net, file->f_cred);
		if (rv < 0)
			return rv;
	} else
		rv = FUNC2(net);

	return FUNC4(buf, SIMPLE_TRANSACTION_LIMIT, "%d\n", rv);
}