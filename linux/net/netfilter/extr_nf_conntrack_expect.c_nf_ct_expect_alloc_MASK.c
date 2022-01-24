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
struct nf_conntrack_expect {int /*<<< orphan*/  use; struct nf_conn* master; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct nf_conntrack_expect* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_expect_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

struct nf_conntrack_expect *FUNC2(struct nf_conn *me)
{
	struct nf_conntrack_expect *new;

	new = FUNC0(nf_ct_expect_cachep, GFP_ATOMIC);
	if (!new)
		return NULL;

	new->master = me;
	FUNC1(&new->use, 1);
	return new;
}