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
typedef  int /*<<< orphan*/  raw_u32 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int const NAME_TBD ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 char* FUNC3 (char const*,char const*) ; 
 int FUNC4 (int const*) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static __u32 *FUNC7(const __u32 *raw_u32,
			     const char *str, __u32 str_off,
			     unsigned int str_sec_size,
			     unsigned int *ret_size)
{
	int i, raw_u32_size = FUNC4(raw_u32);
	const char *end_str = str + str_sec_size;
	const char *next_str = str + str_off;
	__u32 *new_u32 = NULL;

	if (raw_u32_size == -1)
		return FUNC1(-EINVAL);

	if (!raw_u32_size) {
		*ret_size = 0;
		return NULL;
	}

	new_u32 = FUNC5(raw_u32_size);
	if (!new_u32)
		return FUNC1(-ENOMEM);

	for (i = 0; i < raw_u32_size / sizeof(raw_u32[0]); i++) {
		if (raw_u32[i] == NAME_TBD) {
			next_str = FUNC3(next_str, end_str);
			if (FUNC0(!next_str, "Error in getting next_str\n")) {
				FUNC2(new_u32);
				return FUNC1(-EINVAL);
			}
			new_u32[i] = next_str - str;
			next_str += FUNC6(next_str);
		} else {
			new_u32[i] = raw_u32[i];
		}
	}

	*ret_size = raw_u32_size;
	return new_u32;
}