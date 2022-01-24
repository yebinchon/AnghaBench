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
 size_t FUNC0 (int) ; 
 int __LIBBPF_ERRNO__END ; 
 int __LIBBPF_ERRNO__START ; 
 char** libbpf_strerror_table ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,...) ; 
 int FUNC2 (int,char*,size_t) ; 

int FUNC3(int err, char *buf, size_t size)
{
	if (!buf || !size)
		return -1;

	err = err > 0 ? err : -err;

	if (err < __LIBBPF_ERRNO__START) {
		int ret;

		ret = FUNC2(err, buf, size);
		buf[size - 1] = '\0';
		return ret;
	}

	if (err < __LIBBPF_ERRNO__END) {
		const char *msg;

		msg = libbpf_strerror_table[FUNC0(err)];
		FUNC1(buf, size, "%s", msg);
		buf[size - 1] = '\0';
		return 0;
	}

	FUNC1(buf, size, "Unknown libbpf error %d", err);
	buf[size - 1] = '\0';
	return -1;
}