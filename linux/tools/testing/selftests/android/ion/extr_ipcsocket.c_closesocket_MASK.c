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
 int MAX_SOCK_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(int sockfd, char *name)
{
	char sockname[MAX_SOCK_NAME_LEN];

	if (sockfd)
		FUNC0(sockfd);
	FUNC2(sockname, "/tmp/%s", name);
	FUNC3(sockname);
	FUNC1(sockfd, 2);

	return 0;
}