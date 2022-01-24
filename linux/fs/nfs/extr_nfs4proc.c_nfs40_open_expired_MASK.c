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
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_state*) ; 
 int FUNC1 (struct nfs4_state_owner*,struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_state*) ; 

__attribute__((used)) static int FUNC3(struct nfs4_state_owner *sp, struct nfs4_state *state)
{
	/* NFSv4.0 doesn't allow for delegation recovery on open expire */
	FUNC0(state);
	FUNC2(state);
	return FUNC1(sp, state);
}