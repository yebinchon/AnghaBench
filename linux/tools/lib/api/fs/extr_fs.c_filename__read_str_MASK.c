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
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 scalar_t__ BUFSIZ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,void*,size_t) ; 
 void* FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

int FUNC7(const char *filename, char **buf, size_t *sizep)
{
	size_t size = 0, alloc_size = 0;
	void *bf = NULL, *nbf;
	int fd, n, err = 0;
	char sbuf[STRERR_BUFSIZE];

	fd = FUNC2(filename, O_RDONLY);
	if (fd < 0)
		return -errno;

	do {
		if (size == alloc_size) {
			alloc_size += BUFSIZ;
			nbf = FUNC5(bf, alloc_size);
			if (!nbf) {
				err = -ENOMEM;
				break;
			}

			bf = nbf;
		}

		n = FUNC4(fd, bf + size, alloc_size - size);
		if (n < 0) {
			if (size) {
				FUNC3("read failed %d: %s\n", errno,
					 FUNC6(errno, sbuf, sizeof(sbuf)));
				err = 0;
			} else
				err = -errno;

			break;
		}

		size += n;
	} while (n > 0);

	if (!err) {
		*sizep = size;
		*buf   = bf;
	} else
		FUNC1(bf);

	FUNC0(fd);
	return err;
}