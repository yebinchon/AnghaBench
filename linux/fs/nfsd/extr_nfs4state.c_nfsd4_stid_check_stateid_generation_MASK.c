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
struct nfs4_stid {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_stateid; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC1 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 FUNC4(stateid_t *in, struct nfs4_stid *s, bool has_session)
{
	__be32 ret;

	FUNC2(&s->sc_lock);
	ret = FUNC1(s);
	if (ret == nfs_ok)
		ret = FUNC0(in, &s->sc_stateid, has_session);
	FUNC3(&s->sc_lock);
	return ret;
}