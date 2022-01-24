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
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EPERM ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int SIOCGIWENCODE ; 
 unsigned int SIOCGIWENCODEEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(unsigned int cmd)
{
	if ((FUNC0(cmd) || cmd == SIOCGIWENCODE ||
	     cmd == SIOCGIWENCODEEXT) &&
	    !FUNC1(CAP_NET_ADMIN))
		return -EPERM;

	return 0;
}