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
struct tcindex_filter_result {int /*<<< orphan*/  exts; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_TCINDEX_ACT ; 
 int /*<<< orphan*/  TCA_TCINDEX_POLICE ; 
 int /*<<< orphan*/  FUNC0 (struct tcindex_filter_result*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tcindex_filter_result *r,
				      struct net *net)
{
	FUNC0(r, 0, sizeof(*r));
	return FUNC1(&r->exts, net, TCA_TCINDEX_ACT,
			     TCA_TCINDEX_POLICE);
}