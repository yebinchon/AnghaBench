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
struct nf_conntrack_l4proto {scalar_t__ (* can_early_drop ) (struct nf_conn const*) ;} ;
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_ASSURED_BIT ; 
 struct nf_conntrack_l4proto* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn const*) ; 
 scalar_t__ FUNC2 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(const struct nf_conn *ct)
{
	const struct nf_conntrack_l4proto *l4proto;

	if (!FUNC3(IPS_ASSURED_BIT, &ct->status))
		return true;

	l4proto = FUNC0(FUNC1(ct));
	if (l4proto->can_early_drop && l4proto->can_early_drop(ct))
		return true;

	return false;
}