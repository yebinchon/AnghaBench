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
struct nlattr {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TASKSTATS_CPUMASK_MAXLEN ; 
 int FUNC0 (char*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct nlattr*,int) ; 

__attribute__((used)) static int FUNC5(struct nlattr *na, struct cpumask *mask)
{
	char *data;
	int len;
	int ret;

	if (na == NULL)
		return 1;
	len = FUNC3(na);
	if (len > TASKSTATS_CPUMASK_MAXLEN)
		return -E2BIG;
	if (len < 1)
		return -EINVAL;
	data = FUNC2(len, GFP_KERNEL);
	if (!data)
		return -ENOMEM;
	FUNC4(data, na, len);
	ret = FUNC0(data, mask);
	FUNC1(data);
	return ret;
}