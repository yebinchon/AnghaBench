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
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi4 {scalar_t__ saddr; int /*<<< orphan*/  flowi4_flags; scalar_t__ daddr; } ;
typedef  int /*<<< orphan*/  fl4 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FLOWI_FLAG_KNOWN_NH ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*) ; 
 int IP_VS_RT_MODE_CONNECT ; 
 int IP_VS_RT_MODE_KNOWN_NH ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC3 (struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct rtable* FUNC4 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi4*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct rtable *FUNC7(struct net *net, __be32 daddr,
				       int rt_mode, __be32 *saddr)
{
	struct flowi4 fl4;
	struct rtable *rt;
	bool loop = false;

	FUNC6(&fl4, 0, sizeof(fl4));
	fl4.daddr = daddr;
	fl4.flowi4_flags = (rt_mode & IP_VS_RT_MODE_KNOWN_NH) ?
			   FLOWI_FLAG_KNOWN_NH : 0;

retry:
	rt = FUNC4(net, &fl4);
	if (FUNC1(rt)) {
		/* Invalid saddr ? */
		if (FUNC2(rt) == -EINVAL && *saddr &&
		    rt_mode & IP_VS_RT_MODE_CONNECT && !loop) {
			*saddr = 0;
			FUNC3(&fl4, 0, 0, daddr, 0);
			goto retry;
		}
		FUNC0("ip_route_output error, dest: %pI4\n", &daddr);
		return NULL;
	} else if (!*saddr && rt_mode & IP_VS_RT_MODE_CONNECT && fl4.saddr) {
		FUNC5(rt);
		*saddr = fl4.saddr;
		FUNC3(&fl4, 0, 0, daddr, fl4.saddr);
		loop = true;
		goto retry;
	}
	*saddr = fl4.saddr;
	return rt;
}