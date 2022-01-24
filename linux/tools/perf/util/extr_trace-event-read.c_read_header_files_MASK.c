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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned long long) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned long long FUNC5 (struct tep_handle*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct tep_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct tep_handle*) ; 
 int /*<<< orphan*/  FUNC9 (struct tep_handle*,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tep_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct tep_handle *pevent)
{
	unsigned long long size;
	char *header_page;
	char buf[BUFSIZ];
	int ret = 0;

	if (FUNC0(buf, 12) < 0)
		return -1;

	if (FUNC3(buf, "header_page", 12) != 0) {
		FUNC4("did not read header page");
		return -1;
	}

	size = FUNC5(pevent);

	header_page = FUNC2(size);
	if (header_page == NULL)
		return -1;

	if (FUNC0(header_page, size) < 0) {
		FUNC4("did not read header page");
		FUNC1(header_page);
		return -1;
	}

	if (!FUNC9(pevent, header_page, size,
				   FUNC8(pevent))) {
		/*
		 * The commit field in the page is of type long,
		 * use that instead, since it represents the kernel.
		 */
		FUNC10(pevent, FUNC7(pevent));
	}
	FUNC1(header_page);

	if (FUNC0(buf, 13) < 0)
		return -1;

	if (FUNC3(buf, "header_event", 13) != 0) {
		FUNC4("did not read header event");
		return -1;
	}

	size = FUNC5(pevent);
	FUNC6(size);

	return ret;
}