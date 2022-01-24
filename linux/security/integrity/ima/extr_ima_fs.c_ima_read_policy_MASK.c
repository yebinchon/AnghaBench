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
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  READING_POLICY ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,void**,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static ssize_t FUNC7(char *path)
{
	void *data;
	char *datap;
	loff_t size;
	int rc, pathlen = FUNC4(path);

	char *p;

	/* remove \n */
	datap = path;
	FUNC5(&datap, "\n");

	rc = FUNC1(path, &data, &size, 0, READING_POLICY);
	if (rc < 0) {
		FUNC3("Unable to open file: %s (%d)", path, rc);
		return rc;
	}

	datap = data;
	while (size > 0 && (p = FUNC5(&datap, "\n"))) {
		FUNC2("rule: %s\n", p);
		rc = FUNC0(p);
		if (rc < 0)
			break;
		size -= rc;
	}

	FUNC6(data);
	if (rc < 0)
		return rc;
	else if (size)
		return -EINVAL;
	else
		return pathlen;
}