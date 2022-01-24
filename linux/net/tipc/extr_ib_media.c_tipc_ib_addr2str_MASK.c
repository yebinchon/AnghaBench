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
struct tipc_media_addr {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct tipc_media_addr *a, char *str_buf,
			    int str_size)
{
	if (str_size < 60)	/* 60 = 19 * strlen("xx:") + strlen("xx\0") */
		return 1;

	FUNC0(str_buf, "%20phC", a->value);

	return 0;
}