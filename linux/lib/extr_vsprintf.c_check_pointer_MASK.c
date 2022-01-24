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
struct printf_spec {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 char* FUNC0 (void const*) ; 
 char* FUNC1 (char*,char*,char const*,struct printf_spec) ; 

__attribute__((used)) static int FUNC2(char **buf, char *end, const void *ptr,
			 struct printf_spec spec)
{
	const char *err_msg;

	err_msg = FUNC0(ptr);
	if (err_msg) {
		*buf = FUNC1(*buf, end, err_msg, spec);
		return -EFAULT;
	}

	return 0;
}