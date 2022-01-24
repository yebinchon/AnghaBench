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
struct sockmap_options {int sendpage; int drop_expected; int rate; int iov_count; int iov_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTSTRING ; 
 int SENDPAGE ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  failed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  passed ; 
 int FUNC4 (struct sockmap_options*,int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int test_cnt ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 scalar_t__ txmsg_drop ; 

__attribute__((used)) static int FUNC7(int cgrp, int test, struct sockmap_options *opt)
{
	char *options = FUNC0(OPTSTRING, sizeof(char));
	int err;

	if (test == SENDPAGE)
		opt->sendpage = true;
	else
		opt->sendpage = false;

	if (txmsg_drop)
		opt->drop_expected = true;
	else
		opt->drop_expected = false;

	FUNC5(options);

	FUNC2(stdout,
		"[TEST %i]: (%i, %i, %i, %s, %s): ",
		test_cnt, opt->rate, opt->iov_count, opt->iov_length,
		FUNC6(test), options);
	FUNC1(stdout);
	err = FUNC4(opt, cgrp, test);
	FUNC2(stdout, "%s\n", !err ? "PASS" : "FAILED");
	test_cnt++;
	!err ? passed++ : failed++;
	FUNC3(options);
	return err;
}