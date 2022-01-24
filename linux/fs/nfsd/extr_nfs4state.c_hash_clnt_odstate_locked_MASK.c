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
struct nfs4_file {int /*<<< orphan*/  fi_clnt_odstate; int /*<<< orphan*/  fi_lock; } ;
struct nfs4_clnt_odstate {int /*<<< orphan*/  co_perfile; struct nfs4_file* co_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nfs4_clnt_odstate *co)
{
	struct nfs4_file *fp = co->co_file;

	FUNC1(&fp->fi_lock);
	FUNC0(&co->co_perfile, &fp->fi_clnt_odstate);
}