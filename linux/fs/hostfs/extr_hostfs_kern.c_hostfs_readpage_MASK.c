#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 TYPE_1__* FUNC2 (struct file*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 char* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct file *file, struct page *page)
{
	char *buffer;
	loff_t start = FUNC9(page);
	int bytes_read, ret = 0;

	buffer = FUNC6(page);
	bytes_read = FUNC10(FUNC2(file)->fd, &start, buffer,
			PAGE_SIZE);
	if (bytes_read < 0) {
		FUNC1(page);
		FUNC3(page);
		ret = bytes_read;
		goto out;
	}

	FUNC8(buffer + bytes_read, 0, PAGE_SIZE - bytes_read);

	FUNC0(page);
	FUNC4(page);

 out:
	FUNC5(page);
	FUNC7(page);
	FUNC11(page);
	return ret;
}