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
struct net {int dummy; } ;
struct clusterip_config {int /*<<< orphan*/  entries; int /*<<< orphan*/  refcount; int /*<<< orphan*/  pde; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct clusterip_config* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clusterip_config*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline struct clusterip_config *
FUNC6(struct net *net, __be32 clusterip, int entry)
{
	struct clusterip_config *c;

	FUNC2();
	c = FUNC0(net, clusterip);
	if (c) {
#ifdef CONFIG_PROC_FS
		if (!c->pde)
			c = NULL;
		else
#endif
		if (FUNC5(!FUNC4(&c->refcount)))
			c = NULL;
		else if (entry) {
			if (FUNC5(!FUNC4(&c->entries))) {
				FUNC1(c);
				c = NULL;
			}
		}
	}
	FUNC3();

	return c;
}