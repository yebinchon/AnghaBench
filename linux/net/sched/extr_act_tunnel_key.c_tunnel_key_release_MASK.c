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
struct tcf_tunnel_key_params {int dummy; } ;
struct tcf_tunnel_key {int /*<<< orphan*/  params; } ;
struct tc_action {int dummy; } ;

/* Variables and functions */
 struct tcf_tunnel_key_params* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct tcf_tunnel_key* FUNC1 (struct tc_action*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_tunnel_key_params*) ; 

__attribute__((used)) static void FUNC3(struct tc_action *a)
{
	struct tcf_tunnel_key *t = FUNC1(a);
	struct tcf_tunnel_key_params *params;

	params = FUNC0(t->params, 1);
	FUNC2(params);
}