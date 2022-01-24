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
struct cfs_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

char *FUNC2(struct cfs_rq *cfs_rq, char *str, int len)
{
	if (!cfs_rq) {
		if (str)
			FUNC1(str, "(null)", len);
		else
			return NULL;
	}

	FUNC0(cfs_rq, str, len);
	return str;
}