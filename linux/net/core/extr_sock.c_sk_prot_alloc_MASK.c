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
struct sock {int dummy; } ;
struct proto {int /*<<< orphan*/  owner; int /*<<< orphan*/  obj_size; struct kmem_cache* slab; } ;
struct kmem_cache {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sock* FUNC2 (struct kmem_cache*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct sock *FUNC10(struct proto *prot, gfp_t priority,
		int family)
{
	struct sock *sk;
	struct kmem_cache *slab;

	slab = prot->slab;
	if (slab != NULL) {
		sk = FUNC2(slab, priority & ~__GFP_ZERO);
		if (!sk)
			return sk;
		if (FUNC9(priority))
			FUNC6(sk, prot->obj_size);
	} else
		sk = FUNC1(prot->obj_size, priority);

	if (sk != NULL) {
		if (FUNC4(sk, family, priority))
			goto out_free;

		if (!FUNC8(prot->owner))
			goto out_free_sec;
		FUNC7(sk);
	}

	return sk;

out_free_sec:
	FUNC5(sk);
out_free:
	if (slab != NULL)
		FUNC3(slab, sk);
	else
		FUNC0(sk);
	return NULL;
}