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
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct btf* FUNC0 (int /*<<< orphan*/ ) ; 
 struct btf* FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 size_t FUNC4 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 

__attribute__((used)) static struct btf *FUNC8(const char *path)
{
	struct btf *btf;
	size_t read_cnt;
	struct stat st;
	void *data;
	FILE *f;

	if (FUNC7(path, &st))
		return FUNC0(-errno);

	data = FUNC6(st.st_size);
	if (!data)
		return FUNC0(-ENOMEM);

	f = FUNC3(path, "rb");
	if (!f) {
		btf = FUNC0(-errno);
		goto cleanup;
	}

	read_cnt = FUNC4(data, 1, st.st_size, f);
	FUNC2(f);
	if (read_cnt < st.st_size) {
		btf = FUNC0(-EBADF);
		goto cleanup;
	}

	btf = FUNC1(data, read_cnt);

cleanup:
	FUNC5(data);
	return btf;
}