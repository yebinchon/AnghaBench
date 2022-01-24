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
typedef  int /*<<< orphan*/  u8 ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  scope_id ;
typedef  int /*<<< orphan*/  port ;
typedef  struct in6_addr const __u32 ;
typedef  struct in6_addr const __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr const*,int) ; 

__attribute__((used)) static inline void FUNC1(u8 *key, const struct in6_addr *addr,
					 __be16 port, __u32 scope_id)
{
	FUNC0(key, addr, sizeof(*addr));
	key += sizeof(*addr);
	FUNC0(key, &port, sizeof(port));
	key += sizeof(port);
	FUNC0(key, &scope_id, sizeof(scope_id));
}