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
struct tracing_data {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tracing_data* FUNC0 (struct list_head*,int,int) ; 
 int FUNC1 (struct tracing_data*) ; 

int FUNC2(int fd, struct list_head *pattrs)
{
	int err;
	struct tracing_data *tdata;

	/*
	 * We work over the real file, so we can write data
	 * directly, no temp file is needed.
	 */
	tdata = FUNC0(pattrs, fd, false);
	if (!tdata)
		return -ENOMEM;

	err = FUNC1(tdata);
	return err;
}