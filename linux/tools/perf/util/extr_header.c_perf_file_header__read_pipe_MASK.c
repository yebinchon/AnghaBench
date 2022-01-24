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
struct perf_pipe_file_header {int /*<<< orphan*/  size; int /*<<< orphan*/  magic; } ;
struct perf_header {scalar_t__ needs_swap; } ;
struct feat_fd {struct perf_header* ph; int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct perf_header*) ; 
 scalar_t__ FUNC2 (struct feat_fd*,struct perf_pipe_file_header*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,struct perf_pipe_file_header*,int) ; 

__attribute__((used)) static int FUNC5(struct perf_pipe_file_header *header,
				       struct perf_header *ph, int fd,
				       bool repipe)
{
	struct feat_fd ff = {
		.fd = STDOUT_FILENO,
		.ph = ph,
	};
	ssize_t ret;

	ret = FUNC4(fd, header, sizeof(*header));
	if (ret <= 0)
		return -1;

	if (FUNC1(header->magic, header->size, true, ph) < 0) {
		FUNC3("endian/magic failed\n");
		return -1;
	}

	if (ph->needs_swap)
		header->size = FUNC0(header->size);

	if (repipe && FUNC2(&ff, header, sizeof(*header)) < 0)
		return -1;

	return 0;
}