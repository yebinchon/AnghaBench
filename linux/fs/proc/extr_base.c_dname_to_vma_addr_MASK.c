#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int KSTRTOX_OVERFLOW ; 
 unsigned int FUNC0 (char const*,int,unsigned long long*) ; 

__attribute__((used)) static int FUNC1(struct dentry *dentry,
			     unsigned long *start, unsigned long *end)
{
	const char *str = dentry->d_name.name;
	unsigned long long sval, eval;
	unsigned int len;

	if (str[0] == '0' && str[1] != '-')
		return -EINVAL;
	len = FUNC0(str, 16, &sval);
	if (len & KSTRTOX_OVERFLOW)
		return -EINVAL;
	if (sval != (unsigned long)sval)
		return -EINVAL;
	str += len;

	if (*str != '-')
		return -EINVAL;
	str++;

	if (str[0] == '0' && str[1])
		return -EINVAL;
	len = FUNC0(str, 16, &eval);
	if (len & KSTRTOX_OVERFLOW)
		return -EINVAL;
	if (eval != (unsigned long)eval)
		return -EINVAL;
	str += len;

	if (*str != '\0')
		return -EINVAL;

	*start = sval;
	*end = eval;

	return 0;
}