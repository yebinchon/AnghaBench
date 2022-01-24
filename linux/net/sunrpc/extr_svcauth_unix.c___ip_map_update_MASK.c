#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct unix_domain {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  expiry_time; scalar_t__ flags; } ;
struct ip_map {int /*<<< orphan*/  m_addr; int /*<<< orphan*/  m_class; TYPE_1__ h; struct unix_domain* m_client; } ;
struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IP_HASHBITS ; 
 int /*<<< orphan*/  FUNC0 (struct cache_head*,struct cache_detail*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct cache_head* FUNC4 (struct cache_detail*,TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(struct cache_detail *cd, struct ip_map *ipm,
		struct unix_domain *udom, time_t expiry)
{
	struct ip_map ip;
	struct cache_head *ch;

	ip.m_client = udom;
	ip.h.flags = 0;
	if (!udom)
		FUNC3(CACHE_NEGATIVE, &ip.h.flags);
	ip.h.expiry_time = expiry;
	ch = FUNC4(cd, &ip.h, &ipm->h,
				 FUNC2(ipm->m_class, IP_HASHBITS) ^
				 FUNC1(&ipm->m_addr));
	if (!ch)
		return -ENOMEM;
	FUNC0(ch, cd);
	return 0;
}