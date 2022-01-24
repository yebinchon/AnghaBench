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
struct nfs4_stid {char sc_type; int /*<<< orphan*/  sc_count; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;
typedef  int /*<<< orphan*/  stateid_t ;

/* Variables and functions */
 struct nfs4_stid* FUNC0 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_stid *
FUNC4(struct nfs4_client *cl, stateid_t *t, char typemask)
{
	struct nfs4_stid *s;

	FUNC2(&cl->cl_lock);
	s = FUNC0(cl, t);
	if (s != NULL) {
		if (typemask & s->sc_type)
			FUNC1(&s->sc_count);
		else
			s = NULL;
	}
	FUNC3(&cl->cl_lock);
	return s;
}