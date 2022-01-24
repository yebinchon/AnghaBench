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
struct data {size_t len; scalar_t__ val; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_NONE ; 
 struct data FUNC0 (struct data,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct data FUNC1 (struct data,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct data empty_data ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (scalar_t__,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct data FUNC7(FILE *f, size_t maxlen)
{
	struct data d = empty_data;

	d = FUNC0(d, TYPE_NONE, NULL);
	while (!FUNC3(f) && (d.len < maxlen)) {
		size_t chunksize, ret;

		if (maxlen == -1)
			chunksize = 4096;
		else
			chunksize = maxlen - d.len;

		d = FUNC1(d, chunksize);
		ret = FUNC5(d.val + d.len, 1, chunksize, f);

		if (FUNC4(f))
			FUNC2("Error reading file into data: %s", FUNC6(errno));

		if (d.len + ret < d.len)
			FUNC2("Overflow reading file into data\n");

		d.len += ret;
	}

	return d;
}