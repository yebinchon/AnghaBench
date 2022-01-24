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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 size_t FUNC1 (char const**,unsigned char**,size_t*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static size_t FUNC3(const char *line, unsigned char *buf,
				size_t buf_len)
{
	const char *p;
	size_t ret, bytes_read = 0;

	/* Skip to a colon */
	p = FUNC2(line, ':');
	if (!p)
		return 0;
	p++;

	/* Skip initial spaces */
	while (*p) {
		if (!FUNC0(*p))
			break;
		p++;
	}

	do {
		ret = FUNC1(&p, &buf, &buf_len);
		bytes_read += ret;
		p++;
	} while (ret > 0);

	/* return number of successfully read bytes */
	return bytes_read;
}