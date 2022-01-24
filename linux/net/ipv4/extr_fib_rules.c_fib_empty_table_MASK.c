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
typedef  int u32 ;
struct net {int dummy; } ;
struct fib_table {int dummy; } ;

/* Variables and functions */
 scalar_t__ RT_TABLE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int) ; 
 struct fib_table* FUNC1 (struct net*,int) ; 

__attribute__((used)) static struct fib_table *FUNC2(struct net *net)
{
	u32 id = 1;

	while (1) {
		if (!FUNC0(net, id))
			return FUNC1(net, id);

		if (id++ == RT_TABLE_MAX)
			break;
	}
	return NULL;
}