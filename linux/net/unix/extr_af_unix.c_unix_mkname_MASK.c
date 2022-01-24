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
struct sockaddr_un {scalar_t__ sun_family; scalar_t__* sun_path; } ;

/* Variables and functions */
 scalar_t__ AF_UNIX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sockaddr_un *sunaddr, int len, unsigned int *hashp)
{
	*hashp = 0;

	if (len <= sizeof(short) || len > sizeof(*sunaddr))
		return -EINVAL;
	if (!sunaddr || sunaddr->sun_family != AF_UNIX)
		return -EINVAL;
	if (sunaddr->sun_path[0]) {
		/*
		 * This may look like an off by one error but it is a bit more
		 * subtle. 108 is the longest valid AF_UNIX path for a binding.
		 * sun_path[108] doesn't as such exist.  However in kernel space
		 * we are guaranteed that it is a valid memory location in our
		 * kernel address buffer.
		 */
		((char *)sunaddr)[len] = 0;
		len = FUNC1(sunaddr->sun_path)+1+sizeof(short);
		return len;
	}

	*hashp = FUNC2(FUNC0(sunaddr, len, 0));
	return len;
}