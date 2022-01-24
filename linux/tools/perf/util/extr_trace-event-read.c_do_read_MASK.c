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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  input_fd ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int trace_data_size ; 

__attribute__((used)) static int FUNC2(void *data, int size)
{
	int r;

	r = FUNC0(input_fd, data, size);
	if (r <= 0) {
		FUNC1("reading input file (size expected=%d received=%d)",
			 size, r);
		return -1;
	}

	trace_data_size += r;

	return r;
}