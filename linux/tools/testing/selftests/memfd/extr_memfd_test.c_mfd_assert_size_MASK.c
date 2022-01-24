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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,long long,...) ; 

__attribute__((used)) static void FUNC3(int fd, size_t size)
{
	struct stat st;
	int r;

	r = FUNC1(fd, &st);
	if (r < 0) {
		FUNC2("fstat(%d) failed: %m\n", fd);
		FUNC0();
	} else if (st.st_size != size) {
		FUNC2("wrong file size %lld, but expected %lld\n",
		       (long long)st.st_size, (long long)size);
		FUNC0();
	}
}