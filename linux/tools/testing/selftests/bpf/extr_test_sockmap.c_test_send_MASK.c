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
struct sockmap_options {int iov_length; int iov_count; int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct sockmap_options*) ; 

__attribute__((used)) static int FUNC2(struct sockmap_options *opt, int cgrp)
{
	int err;

	opt->iov_length = 1;
	opt->iov_count = 1;
	opt->rate = 1;
	err = FUNC1(cgrp, opt);
	if (err)
		goto out;

	opt->iov_length = 1;
	opt->iov_count = 1024;
	opt->rate = 1;
	err = FUNC1(cgrp, opt);
	if (err)
		goto out;

	opt->iov_length = 1024;
	opt->iov_count = 1;
	opt->rate = 1;
	err = FUNC1(cgrp, opt);
	if (err)
		goto out;

	opt->iov_length = 1;
	opt->iov_count = 1;
	opt->rate = 512;
	err = FUNC1(cgrp, opt);
	if (err)
		goto out;

	opt->iov_length = 256;
	opt->iov_count = 1024;
	opt->rate = 2;
	err = FUNC1(cgrp, opt);
	if (err)
		goto out;

	opt->rate = 100;
	opt->iov_count = 1;
	opt->iov_length = 5;
	err = FUNC1(cgrp, opt);
	if (err)
		goto out;
out:
	FUNC0();
	return err;
}