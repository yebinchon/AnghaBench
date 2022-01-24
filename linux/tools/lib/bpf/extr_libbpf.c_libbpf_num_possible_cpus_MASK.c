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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,char*,int) ; 
 int FUNC6 (char*,char*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(void)
{
	static const char *fcpu = "/sys/devices/system/cpu/possible";
	int len = 0, n = 0, il = 0, ir = 0;
	unsigned int start = 0, end = 0;
	int tmp_cpus = 0;
	static int cpus;
	char buf[128];
	int error = 0;
	int fd = -1;

	tmp_cpus = FUNC0(cpus);
	if (tmp_cpus > 0)
		return tmp_cpus;

	fd = FUNC3(fcpu, O_RDONLY);
	if (fd < 0) {
		error = errno;
		FUNC4("Failed to open file %s: %s\n",
			   fcpu, FUNC7(error));
		return -error;
	}
	len = FUNC5(fd, buf, sizeof(buf));
	FUNC2(fd);
	if (len <= 0) {
		error = len ? errno : EINVAL;
		FUNC4("Failed to read # of possible cpus from %s: %s\n",
			   fcpu, FUNC7(error));
		return -error;
	}
	if (len == sizeof(buf)) {
		FUNC4("File %s size overflow\n", fcpu);
		return -EOVERFLOW;
	}
	buf[len] = '\0';

	for (ir = 0, tmp_cpus = 0; ir <= len; ir++) {
		/* Each sub string separated by ',' has format \d+-\d+ or \d+ */
		if (buf[ir] == ',' || buf[ir] == '\0') {
			buf[ir] = '\0';
			n = FUNC6(&buf[il], "%u-%u", &start, &end);
			if (n <= 0) {
				FUNC4("Failed to get # CPUs from %s\n",
					   &buf[il]);
				return -EINVAL;
			} else if (n == 1) {
				end = start;
			}
			tmp_cpus += end - start + 1;
			il = ir + 1;
		}
	}
	if (tmp_cpus <= 0) {
		FUNC4("Invalid #CPUs %d from %s\n", tmp_cpus, fcpu);
		return -EINVAL;
	}

	FUNC1(cpus, tmp_cpus);
	return tmp_cpus;
}