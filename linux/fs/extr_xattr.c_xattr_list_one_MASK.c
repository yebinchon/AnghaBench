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
typedef  size_t ssize_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(char **buffer, ssize_t *remaining_size,
			  const char *name)
{
	size_t len = FUNC1(name) + 1;
	if (*buffer) {
		if (*remaining_size < len)
			return -ERANGE;
		FUNC0(*buffer, name, len);
		*buffer += len;
	}
	*remaining_size -= len;
	return 0;
}