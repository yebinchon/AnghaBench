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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct net*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *file, char *buf, size_t size,
			     struct net *net)
{
	if (size == 0)
		return FUNC2(buf, net);

	if (FUNC4(buf[0]))
		return FUNC0(buf, net, file->f_cred);

	if (FUNC3(buf[0]))
		return FUNC1(buf, net, file->f_cred);

	return -EINVAL;
}