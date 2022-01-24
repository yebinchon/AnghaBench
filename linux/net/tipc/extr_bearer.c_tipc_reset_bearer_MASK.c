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
struct tipc_bearer {int /*<<< orphan*/  identity; int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct tipc_bearer*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net *net, struct tipc_bearer *b)
{
	FUNC0("Resetting bearer <%s>\n", b->name);
	FUNC2(net, b->identity);
	FUNC1(net, b);
	return 0;
}