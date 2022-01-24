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
struct timezone {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int fd; long revents; int /*<<< orphan*/  events; } ;
struct hpet_info {long hi_flags; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_EPI ; 
 int /*<<< orphan*/  HPET_IE_ON ; 
 int /*<<< orphan*/  HPET_INFO ; 
 int /*<<< orphan*/  HPET_IRQFREQ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  POLLIN ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,struct timezone*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pollfd*,int,int) ; 
 int FUNC7 (int,long*,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC8(int argc, const char **argv)
{
	unsigned long		freq;
	int			iterations, i, fd;
	struct pollfd		pfd;
	struct hpet_info	info;
	struct timeval		stv, etv;
	struct timezone		tz;
	long			usec;

	if (argc != 3) {
		FUNC2(stderr, "hpet_poll: device-name freq iterations\n");
		return;
	}

	freq = FUNC0(argv[1]);
	iterations = FUNC0(argv[2]);

	fd = FUNC5(argv[0], O_RDONLY);

	if (fd < 0) {
		FUNC2(stderr, "hpet_poll: open of %s failed\n", argv[0]);
		return;
	}

	if (FUNC4(fd, HPET_IRQFREQ, freq) < 0) {
		FUNC2(stderr, "hpet_poll: HPET_IRQFREQ failed\n");
		goto out;
	}

	if (FUNC4(fd, HPET_INFO, &info) < 0) {
		FUNC2(stderr, "hpet_poll: failed to get info\n");
		goto out;
	}

	FUNC2(stderr, "hpet_poll: info.hi_flags 0x%lx\n", info.hi_flags);

	if (info.hi_flags && (FUNC4(fd, HPET_EPI, 0) < 0)) {
		FUNC2(stderr, "hpet_poll: HPET_EPI failed\n");
		goto out;
	}

	if (FUNC4(fd, HPET_IE_ON, 0) < 0) {
		FUNC2(stderr, "hpet_poll, HPET_IE_ON failed\n");
		goto out;
	}

	pfd.fd = fd;
	pfd.events = POLLIN;

	for (i = 0; i < iterations; i++) {
		pfd.revents = 0;
		FUNC3(&stv, &tz);
		if (FUNC6(&pfd, 1, -1) < 0)
			FUNC2(stderr, "hpet_poll: poll failed\n");
		else {
			long 	data;

			FUNC3(&etv, &tz);
			usec = stv.tv_sec * 1000000 + stv.tv_usec;
			usec = (etv.tv_sec * 1000000 + etv.tv_usec) - usec;

			FUNC2(stderr,
				"hpet_poll: expired time = 0x%lx\n", usec);

			FUNC2(stderr, "hpet_poll: revents = 0x%lx\n",
				pfd.revents);

			if (FUNC7(fd, &data, sizeof(data)) != sizeof(data)) {
				FUNC2(stderr, "hpet_poll: read failed\n");
			}
			else
				FUNC2(stderr, "hpet_poll: data 0x%lx\n",
					data);
		}
	}

out:
	FUNC1(fd);
	return;
}