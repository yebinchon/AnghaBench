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
struct stat {scalar_t__ st_size; } ;
struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*,char*,scalar_t__) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct nsinfo*,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC9 (struct nscookie*) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*,char*,struct nsinfo*) ; 
 int FUNC12 (char const*,struct stat*) ; 
 scalar_t__ FUNC13 (char*) ; 
 char* FUNC14 (char*,char) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(const char *from, const char *to, mode_t mode,
			    struct nsinfo *nsi)
{
	int fromfd, tofd;
	struct stat st;
	int err;
	char *tmp = NULL, *ptr = NULL;
	struct nscookie nsc;

	FUNC8(nsi, &nsc);
	err = FUNC12(from, &st);
	FUNC9(&nsc);
	if (err)
		goto out;
	err = -1;

	/* extra 'x' at the end is to reserve space for '.' */
	if (FUNC0(&tmp, "%s.XXXXXXx", to) < 0) {
		tmp = NULL;
		goto out;
	}
	ptr = FUNC14(tmp, '/');
	if (!ptr)
		goto out;
	ptr = FUNC6(ptr + 1, ptr, FUNC13(ptr) - 1);
	*ptr = '.';

	tofd = FUNC7(tmp);
	if (tofd < 0)
		goto out;

	if (st.st_size == 0) { /* /proc? do it slowly... */
		err = FUNC11(from, tmp, nsi);
		if (!err && FUNC3(tofd, mode))
			err = -1;
		goto out_close_to;
	}

	if (FUNC3(tofd, mode))
		goto out_close_to;

	FUNC8(nsi, &nsc);
	fromfd = FUNC10(from, O_RDONLY);
	FUNC9(&nsc);
	if (fromfd < 0)
		goto out_close_to;

	err = FUNC2(fromfd, 0, tofd, 0, st.st_size);

	FUNC1(fromfd);
out_close_to:
	FUNC1(tofd);
	if (!err)
		err = FUNC5(tmp, to);
	FUNC15(tmp);
out:
	FUNC4(tmp);
	return err;
}