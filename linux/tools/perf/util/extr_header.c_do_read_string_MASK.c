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
typedef  int /*<<< orphan*/  u32 ;
struct feat_fd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct feat_fd*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct feat_fd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(struct feat_fd *ff)
{
	u32 len;
	char *buf;

	if (FUNC1(ff, &len))
		return NULL;

	buf = FUNC3(len);
	if (!buf)
		return NULL;

	if (!FUNC0(ff, buf, len)) {
		/*
		 * strings are padded by zeroes
		 * thus the actual strlen of buf
		 * may be less than len
		 */
		return buf;
	}

	FUNC2(buf);
	return NULL;
}