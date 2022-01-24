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
struct sockmap_options {int drop_expected; } ;
struct msg_stats {int bytes_sent; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EIO ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(int fd, int iov_length, int cnt,
			     struct msg_stats *s,
			     struct sockmap_options *opt)
{
	bool drop = opt->drop_expected;
	unsigned char k = 0;
	FILE *file;
	int i, fp;

	file = FUNC4(".sendpage_tst.tmp", "w+");
	for (i = 0; i < iov_length * cnt; i++, k++)
		FUNC6(&k, sizeof(char), 1, file);
	FUNC3(file);
	FUNC5(file, 0, SEEK_SET);
	FUNC2(file);

	fp = FUNC7(".sendpage_tst.tmp", O_RDONLY);
	FUNC0(CLOCK_MONOTONIC, &s->start);
	for (i = 0; i < cnt; i++) {
		int sent = FUNC10(fd, fp, NULL, iov_length);

		if (!drop && sent < 0) {
			FUNC8("send loop error:");
			FUNC1(fp);
			return sent;
		} else if (drop && sent >= 0) {
			FUNC9("sendpage loop error expected: %i\n", sent);
			FUNC1(fp);
			return -EIO;
		}

		if (sent > 0)
			s->bytes_sent += sent;
	}
	FUNC0(CLOCK_MONOTONIC, &s->end);
	FUNC1(fp);
	return 0;
}