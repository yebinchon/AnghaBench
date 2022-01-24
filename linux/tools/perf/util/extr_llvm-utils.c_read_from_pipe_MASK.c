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
typedef  int /*<<< orphan*/  serr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int READ_SIZE ; 
 int STRERR_BUFSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 void* FUNC8 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC10(const char *cmd, void **p_buf, size_t *p_read_sz)
{
	int err = 0;
	void *buf = NULL;
	FILE *file = NULL;
	size_t read_sz = 0, buf_sz = 0;
	char serr[STRERR_BUFSIZE];

	file = FUNC6(cmd, "r");
	if (!file) {
		FUNC7("ERROR: unable to popen cmd: %s\n",
		       FUNC9(errno, serr, sizeof(serr)));
		return -EINVAL;
	}

	while (!FUNC1(file) && !FUNC2(file)) {
		/*
		 * Make buf_sz always have obe byte extra space so we
		 * can put '\0' there.
		 */
		if (buf_sz - read_sz < READ_SIZE + 1) {
			void *new_buf;

			buf_sz = read_sz + READ_SIZE + 1;
			new_buf = FUNC8(buf, buf_sz);

			if (!new_buf) {
				FUNC7("ERROR: failed to realloc memory\n");
				err = -ENOMEM;
				goto errout;
			}

			buf = new_buf;
		}
		read_sz += FUNC3(buf + read_sz, 1, READ_SIZE, file);
	}

	if (buf_sz - read_sz < 1) {
		FUNC7("ERROR: internal error\n");
		err = -EINVAL;
		goto errout;
	}

	if (FUNC2(file)) {
		FUNC7("ERROR: error occurred when reading from pipe: %s\n",
		       FUNC9(errno, serr, sizeof(serr)));
		err = -EIO;
		goto errout;
	}

	err = FUNC0(FUNC5(file));
	file = NULL;
	if (err) {
		err = -EINVAL;
		goto errout;
	}

	/*
	 * If buf is string, give it terminal '\0' to make our life
	 * easier. If buf is not string, that '\0' is out of space
	 * indicated by read_sz so caller won't even notice it.
	 */
	((char *)buf)[read_sz] = '\0';

	if (!p_buf)
		FUNC4(buf);
	else
		*p_buf = buf;

	if (p_read_sz)
		*p_read_sz = read_sz;
	return 0;

errout:
	if (file)
		FUNC5(file);
	FUNC4(buf);
	if (p_buf)
		*p_buf = NULL;
	if (p_read_sz)
		*p_read_sz = 0;
	return err;
}