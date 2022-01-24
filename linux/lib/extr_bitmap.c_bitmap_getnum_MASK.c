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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int KSTRTOX_OVERFLOW ; 
 unsigned int FUNC1 (char const*,int,unsigned long long*) ; 

__attribute__((used)) static const char *FUNC2(const char *str, unsigned int *num)
{
	unsigned long long n;
	unsigned int len;

	len = FUNC1(str, 10, &n);
	if (!len)
		return FUNC0(-EINVAL);
	if (len & KSTRTOX_OVERFLOW || n != (unsigned int)n)
		return FUNC0(-EOVERFLOW);

	*num = n;
	return str + len;
}