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
struct ip_vs_dest_dst {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  dst_cookie; struct dst_entry* dst_cache; } ;
struct ip_vs_dest {int /*<<< orphan*/  dest_dst; int /*<<< orphan*/  dst_lock; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_vs_dest_dst_rcu_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ip_vs_dest_dst*) ; 
 struct ip_vs_dest_dst* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct ip_vs_dest *dest, struct ip_vs_dest_dst *dest_dst,
		struct dst_entry *dst, u32 dst_cookie)
{
	struct ip_vs_dest_dst *old;

	old = FUNC3(dest->dest_dst,
					FUNC1(&dest->dst_lock));

	if (dest_dst) {
		dest_dst->dst_cache = dst;
		dest_dst->dst_cookie = dst_cookie;
	}
	FUNC2(dest->dest_dst, dest_dst);

	if (old)
		FUNC0(&old->rcu_head, ip_vs_dest_dst_rcu_free);
}