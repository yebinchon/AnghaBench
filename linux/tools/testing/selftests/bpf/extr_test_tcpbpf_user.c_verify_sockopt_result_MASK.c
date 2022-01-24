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
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int FUNC1 (int,int*,int*) ; 

int FUNC2(int sock_map_fd)
{
	__u32 key = 0;
	int res;
	int rv;

	/* check setsockopt for SAVE_SYN */
	rv = FUNC1(sock_map_fd, &key, &res);
	FUNC0(0, rv, "d");
	FUNC0(0, res, "d");
	key = 1;
	/* check getsockopt for SAVED_SYN */
	rv = FUNC1(sock_map_fd, &key, &res);
	FUNC0(0, rv, "d");
	FUNC0(1, res, "d");
	return 0;
err:
	return -1;
}