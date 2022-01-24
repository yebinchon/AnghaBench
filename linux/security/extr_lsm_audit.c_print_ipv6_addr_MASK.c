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
struct audit_buffer {int dummy; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,char*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*) ; 
 struct in6_addr* FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct audit_buffer *ab,
				   struct in6_addr *addr, __be16 port,
				   char *name1, char *name2)
{
	if (!FUNC1(addr))
		FUNC0(ab, " %s=%pI6c", name1, addr);
	if (port)
		FUNC0(ab, " %s=%d", name2, FUNC2(port));
}