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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr const*,struct in6_addr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const,char*,struct in6_addr const*,char,struct in6_addr const*) ; 

__attribute__((used)) static void FUNC2(char *buffer, const unsigned int buffer_len,
			      const struct in6_addr *min_ip,
			      const struct in6_addr *max_ip)
{
	FUNC1(buffer, buffer_len, "%pI6c%c%pI6c", min_ip,
		 !FUNC0(min_ip, max_ip, 16) ? '\0' : '-', max_ip);
}