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
struct ip_tunnel_net {int /*<<< orphan*/  collect_md_tun; } ;
struct ip_tunnel {int /*<<< orphan*/  hash_node; scalar_t__ collect_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ip_tunnel_net *itn, struct ip_tunnel *t)
{
	if (t->collect_md)
		FUNC1(itn->collect_md_tun, NULL);
	FUNC0(&t->hash_node);
}